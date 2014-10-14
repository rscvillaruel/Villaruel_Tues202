
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{

	public static SESprite bg;
	public static SEEntity player;
	SEEntity monster;
	public static int ptx;
	public static int pty;
	int i;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc); 
		var w = get_scene_width(); 
		var h = get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("mybg", "bg1", w, h);
		bg = add_sprite_for_image(SEImage.for_resource("mybg"));
		bg.move(0,0);
		player = add_entity(new PlayerEntity());
		for(i = 0; i < 10; i++){
		monster = add_entity(new MonsterEntity());
		}
		
	}
		public void on_pointer_move(SEPointerInfo pi) {
			ptx = pi.get_x();
			pty= pi.get_y();	
		
	}
		public void on_pointer_press(SEPointerInfo pi) {
			base.on_pointer_press(pi);
			if(pi.is_inside(0,0,get_scene_width(), get_scene_height())) {
				switch_scene(new MenuScene());
			}
		}

	public void cleanup() {
		base.cleanup();
	}
}
