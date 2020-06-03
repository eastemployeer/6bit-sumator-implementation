`timescale 1ns / 1ps 
`include "sumator.v"
	module test_bench;

		reg [5:0] x,y;
		wire [6:0] s;
		reg [6:0] s_from_data_file;	//suma poprawna - z pliku data.txt
		integer i;	//licznik petli						
		integer errors; //licznik bledow
		integer error_line[4095:0];				
		reg [18:0] generated_data_vectors [4095:0];	// tablica 4096 (bo tyle mozliwych kombinacji wejsciowych ciągów 0/1) rejestrów 18 bitowych
						

		adder sumator (.x(x),.y(y),.s(s));				

		initial begin
		 	$dumpfile("test_bench.vcd");
			$dumpvars(1,test_bench);
			errors = 0;
			$readmemb("data.txt",generated_data_vectors);

			for(i = 0; i < 4096; i = i + 1) begin

				{x, y, s_from_data_file} = generated_data_vectors[i];
				#1; //1 timestamp delay

				if( s_from_data_file[6:0] != s[6:0] ) begin
					errors = errors + 1;
					$display("BLAD! \n");
					$display("Dane z pliku:     %b  +  %b =  %b", generated_data_vectors[i][18:13], generated_data_vectors[i][12:7] ,generated_data_vectors[i][6:0]);
					$display("Wynik operacji:   %b  +  %b =  %b\n", x, y, s );
					error_line[i]=i+1;
					
				end 
				else begin
					$display("POPRAWNIE! ");
					$display("Dane z pliku:     %b  +  %b =  %b", generated_data_vectors[i][18:13], generated_data_vectors[i][12:7] ,generated_data_vectors[i][6:0]);
					$display("Wynik operacji:   %b  +  %b =  %b\n", x, y, s );
				end
			end

			
			$display("\nRezultat koncowy:");
			if(errors == 0) begin
				$display("Brak bledow!");	
			end 
			
			else begin
				$display("Liczba znalezionych bledow: %4d",errors);
				for (i=0;i<4096;i=i+1) begin
				
				if(error_line[i]) begin
				$display("Blad na linii %4d",error_line[i]);
				end
				end
			end
			$finish;
		end
		

	endmodule
