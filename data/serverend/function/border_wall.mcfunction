# serverend:border_wall
# Called from serverend:tick for each player approaching the soft border.
# Entry context: as = that player, positioned at (14, playerY, 3) (spawn X/Z, player's Y), overworld.

# Face from spawn toward the player, then step forward exactly 1482 blocks along
# that bearing — lands the cursor precisely on the border circle in their direction.
execute facing entity @s feet positioned ^ ^ ^1482 run function serverend:border_wall/segment
