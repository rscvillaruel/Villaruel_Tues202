
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	SESprite bg1;
	int px1;
	int py1;
	int speed;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(); 
		var h = get_scene_height();
		rsc.prepare_image("finn", "finn", w*0.20, h*0.30);
		rsc.prepare_image("gm","gameover",get_scene_width(),get_scene_height());
		//bg1 = add_sprite_for_image(SEImage.for_resource("gm"));
		monster = add_sprite_for_image(SEImage.for_resource("finn"));
		var wp = monster.get_width();
		var wh = monster.get_height();
		px1 = Math.random(0,w);
		py1 = Math.random(0,h);
		monster.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(4,15);
	}

	       public void tick (TimeVal time, double delta) {
                if(px1 < MainScene.ptx){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.ptx){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.pty){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.pty){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.ptx&&py1==MainScene.pty) {
                        MainScene.bg = add_sprite_for_image(SEImage.for_resource("gm"));

                        MainScene.bg.move(0,0);
                }
               monster.move(px1,py1);

        }
		

	public void cleanup() {
		base.cleanup();
	}
}
