    var max_so_far = 0
    var max_ending_here = 0
    var i = 0;
    console.log(array)
    console.log(typeof array)
    console.log(array.length);
    for(i = 0; i< array.length; i++){
      max_ending_here = max_ending_here + array[i]
      if(max_ending_here < 0) max_ending_here = 0;
      if(max_so_far < max_ending_here) max_so_far = max_ending_here;
      
    }
  return max_so_far;
