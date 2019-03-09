//Resize Grid
if(ds_exists(ds_depthgrid, ds_type_grid)){
	var inst_num = instance_number(par_depth_object);
	var dgrid = ds_depthgrid;

	ds_grid_resize(dgrid, 2, inst_num);

	//Add instances to the greed
	var yy = 0;
	with(par_depth_object){
		dgrid[# 0, yy] = id;
		dgrid[# 1, yy] = y;
		yy += 1;
	}

	//Sort the grid
	ds_grid_sort(dgrid, 1, true);

	//Loop through the grid and draw all instances
	var inst; yy = 0; repeat(inst_num){
		//pull ID
		inst = dgrid[# 0, yy];
		//draw instance
		with(inst){
			draw_self();
		}
		yy += 1;
	}
	ds_grid_clear(ds_depthgrid, 0);
}
