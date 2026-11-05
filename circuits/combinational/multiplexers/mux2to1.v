module top_module( 
    input a, b, sel,
    output out ); 

    // assign out = (!a && b && sel) || (a &&!b && !sel) || (a && b&& !sel) || (a&&b&&sel) ;
    assign out = sel ? b: a;
endmodule
