// Will depth sort objects that call this function between lower and upper depth bounds
function VersaUtilsDepthSort(lowerDepthBound, upperDepthBound)
{
	// Figure out the depth by the current y value (simple depth sorting)
	var perceivedDepth = -bbox_bottom;
	
	// Reset the global min values for the current room
	if((!variable_global_exists("_entityDepthMin"))
		|| (is_undefined(global._entityDepthMin[room])) 
		|| (perceivedDepth < global._entityDepthMin[room]))
		global._entityDepthMin[room] = perceivedDepth * 1.02;
		
	// Reset the global max values for the current room
	if((!variable_global_exists("_entityDepthMax"))
		|| (is_undefined(global._entityDepthMax[room]))
		|| (perceivedDepth > global._entityDepthMax[room]))
		global._entityDepthMax[room] = perceivedDepth * 0.98;	
		
	// Using the min/max y values of the depth objects, normalize the perceived depth
	var normalizedDepth = 1;
	if(global._entityDepthMax[room] > global._entityDepthMin[room])
	{
		normalizedDepth = (perceivedDepth - (global._entityDepthMin[room]));
		normalizedDepth /= (global._entityDepthMax[room] - global._entityDepthMin[room]);		
	}
	
	//Fit the depth values in between the upper and lower limits (floor and ceiling tile layers)
	var scaleValue = upperDepthBound - lowerDepthBound;
	var scaledDepth = normalizedDepth * scaleValue + lowerDepthBound;
	
	//Set the depth value so it is rendered correctly
	depth = scaledDepth;
}
