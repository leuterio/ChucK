SinOsc s => dac;
0 => int t;
50.0 => float a;
75.0 => float b;
80.0 => float c;
105.0 => float d;

while( t < 15){
    a => s.freq;
    200::ms => now;
    
    b => s.freq;
    200::ms => now;
    
    c => s.freq;
    200::ms => now;
    
    d => s.freq;
    200::ms => now;
    
    c => s.freq;
    200::ms => now;
    
    b => s.freq;
    200::ms => now;
    
    t + 1 => t;
    if ( d < 800) {
        a * 2 => a;
        b * 2 => b;
        c * 2 => c;
        d * 2 => d;
    } else {
        a / 2 => a;
        b / 2 => b;
        c / 2 => c;
        d / 2 => d;
    }
}



