effect effects/weapons/smcstunneedle/impact_default
{
	size	1074

	spawner "x_fill2"
	{
		start		0.15,0.15
		count		15,15

		sprite
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/weapons/plasma1"
			generatedOriginNormal

			start
			{
				position { sphere 0,-200,-200,0,200,200 surface }
				velocity { box 0,0,0,1000,0,0 }
				size { point 50,50 }
				tint { line 0.827451,1,0.701961,1,1,0 }
				fade { line 0.5,1 }
				offset { box 0,-100,-100,0,100,100 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				offset { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 200,200 }
				offset { point 1,1,1 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	spawner "x_fill3"
	{
		start		0.15,0.15
		count		10,10

		sprite
		{
			duration	0.25,0.5
			blend	add
			material	"gfx/effects/weapons/plasma1"

			start
			{
				position { sphere 0,-200,-200,0,200,200 surface }
				velocity { box 0,0,0,800,0,0 }
				size { point 100,100 }
				tint { line 0.980392,1,0.701961,1,1,0 }
				fade { line 0.5,1 }
				offset { box 0,-100,-100,0,100,100 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				offset { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 500,500 }
				offset { point 1,1,1 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	sound "unnamed9"
	{
		soundShader	"weapon_darkmatter_energy_burst"
	}
}
