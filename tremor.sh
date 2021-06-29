r FULB.TW.HHN.SAC
rmean
taper w 0.01
rtr
transfer from polezero subtype FULB.TW.HHN.pz to vel freqlim 0.001 0.002 40 50
w over

r FULB.TW.HHN.SAC 				
ch CMPAZ 0 CMPINC 90			
wh						
r FULB.TW.HHE.SAC 				
ch CMPAZ 90 CMPINC 90			
wh						
r FULB.TW.HHN.SAC FULB.TW.HHE.SAC		
rotate to GCP				 
w FULB.TW.HHR.SAC FULB.TW.HHT.SAC 

r *HE*
qdp off
bp p 2 n 4 c 2 8
w append .bp 
r more
synch
envelope
smooth h 100
p1
xlim 0 600

p1
bd sgf
p1
sgftops f001.sgf output.ps