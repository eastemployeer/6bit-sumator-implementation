`timescale 1ns / 1ps 
`include "sumator.v"
	module test_bench;

		reg [5:0] x,y;
		wire [6:0] s;	
		reg [6:0] ssum;	//suma poprawna - z pliku data.txt
		integer i;	//licznik petli
		integer j;					
		integer errors; //licznik bledow
		integer error_line[4095:0];				
		reg [18:0] generated_data_vectors [4095:0];	// tablica 4096 (bo tyle mozliwych kombinacji wejsciowych ciągów 0/1) rejestrów 18 bitowych
						

		adder sumator (.x(x),.y(y),.s(s));				

		initial begin
		 	$dumpfile("test_bench.vcd");
			$dumpvars(1,test_bench);
			errors = 0;
			x = 0;
  		 	y = 0;
     		 	ssum = 0;
  		 	for (i=0; i<64; i=i+1) begin
    				for (j=0; j<64; j=j+1) begin
     					ssum = x + y;
     					#1;
					if( ssum[6:0] != s[6:0] ) begin
						errors = errors + 1;
						$display("BLAD! \n");
						$display("Dane wejsciowe:    %b  +  %b =  %b", x,y,ssum);
						$display("Wynik operacji:    %b  +  %b =  %b\n", x, y, s );
						error_line[i]=i+1;
					
					end 
					else begin
						$display("POPRAWNIE! ");
						$display("Dane wejsciowe:    %b  +  %b =  %b", x,y,ssum);
						$display("Wynik operacji:    %b  +  %b =  %b\n", x, y, s );
					end
					y = y+1;
    				end
  				x = x+1;
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
