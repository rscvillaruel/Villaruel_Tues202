
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	
	SESprite bg;
	SESprite play; 
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	AudioClipManager.prepare("www.ringersmobile.comAdventureTime-OpeningSong");
		var w = get_scene_width(); 
		var h = get_scene_height();
		rsc.prepare_image("mybg", "bg1", w, h);
		rsc.prepare_image("play", "play2", w*0.3, h*0.3);
		bg = add_sprite_for_image(SEImage.for_resource("mybg"));
		play = add_sprite_for_image(SEImage.for_resource("play"));
		bg.move(0,0);
		play.move(500,500);
		}
		public void on_pointer_press(SEPointerInfo pi) {
			base.on_pointer_press(pi);
			if(pi.is_inside(500,500,get_scene_width()*0.5, get_scene_height()*0.5)) {
				switch_scene(new MainScene());
			}
			AudioClipManager.play("www.ringersmobile.comAdventureTime-OpeningSong");
		}
	
	public void cleanup() {
		base.cleanup();
	}
}
