

# cub3d

&nbsp;

---

&nbsp;

## Common Instructions

- Written in C.
- Written in accordance with the Norm.
- Functions should not quit unexpectedly (except for undefined behaviors).
- All heap allocated memory space must be properly freed when necessary.
- Makefile must compile source files with -Wall, -Wextra, and -Werror flags, use cc, and not relink.
- Makefile must include rules $(NAME), all, clean, fclean, and re.
- Bonuses must be in a different file _bonus.{c/h} and evaluated separately.
- If libft is used, it must be copied with its Makefile in a libft folder.
- Creating test programs is encouraged.
- Work must be submitted to the assigned git repository.
- Only the work in the git repository will be graded.
- Evaluation by Deepthought will happen after peer-evaluations.
- Evaluation will stop if an error happens in any section of the work during Deepthought's grading.


&nbsp;

---

&nbsp;

## Mnadatory part

- Program name: cub3D
- Turn in files: All your files
- Makefile: all, clean, fclean, re, bonus
- Arguments: a map in format *.cub
- External functions:
    - open, close, read, write, printf, malloc, free, perror, strerror, exit
    - All functions of the math library (-lm man man 3 math)
    - All functions of the MinilibX
- Libft authorized: Yes
- Description: You must create a “realistic” 3D graphical representation of the inside of a maze from a first-person perspective. You have to create this representation using the Ray-Casting principles mentioned earlier.


&nbsp;

---

&nbsp;

## Constraints

• You must use the miniLibX. Either the version that is available on the operating
system, or from its sources. If you choose to work with the sources, you will
need to apply the same rules for your libft as those written above in Common
Instructions part.

• The management of your window must remain smooth: changing to another win-
dow, minimizing, etc.

• Display different wall textures (the choice is yours) that vary depending on which
side the wall is facing (North, South, East, West).

• Your program must be able to set the floor and ceiling colors to two different ones.

• The program displays the image in a window and respects the following rules:

  ◦ The left and right arrow keys of the keyboard must allow you to look left and
  right in the maze.

  ◦ The W, A, S, and D keys must allow you to move the point of view through
  the maze.

  ◦ Pressing ESC must close the window and quit the program cleanly.

  ◦ Clicking on the red cross on the window’s frame must close the window and
  quit the program cleanly.

  ◦ The use of images of the minilibX is strongly recommended.


• Your program must take as a first argument a scene description file with the .cub
extension.

  ◦ The map must be composed of only 6 possible characters: 0 for an empty space,
  1 for a wall, and N,S,E or W for the player’s start position and spawning
  orientation.

  ◦ The map must be closed/surrounded by walls, if not the program must return
  an error.

  ◦ Except for the map content, each type of element can be separated by one or
  more empty line(s).

  ◦ Except for the map content which always has to be the last, each type of
  element can be set in any order in the file.

  ◦ Except for the map, each type of information from an element can be separated
  by one or more space(s).

  ◦ The map must be parsed as it looks in the file. Spaces are a valid part of the
  map and are up to you to handle. You must be able to parse any kind of map,
  as long as it respects the rules of the map.

  ◦ Each element (except the map) firsts information is the type identifier (com-
  posed by one or two character(s)), followed by all specific informations for each
  object in a strict order such as:

    ∗ North texture:
 
        NO ./path_to_the_north_texture
        
        · identifier: NO
       
        · path to the north texure

    ∗ South texture:

        SO ./path_to_the_south_texture
      
        · identifier: SO
      
        · path to the south texure

    ∗ West texture:

        WE ./path_to_the_west_texture

        · identifier: WE

        · path to the west texure


    ∗ East texture:

        EA ./path_to_the_east_texture

        · identifier: EA

        · path to the east texure

    ∗ Floor color:

        F 220,100,0

        · identifier: F

        · R,G,B colors in range [0,255]: 0, 255, 255

    ∗ Ceiling color:

          C 225,30,0

          · identifier: C

            * R,G,B colors in range [0,255]: 0, 255, 255

    * Resolution:

          R 1920 1080

            · identifier: R

            · first argument: horizontal resolution

            · second argument: vertical resolution

◦ Example of the file:

    R 1920 1080

    NO ./path_to_the_north_texture

    SO ./path_to_the_south_texture

    WE ./path_to_the_west_texture

    EA ./path_to_the_east_texture

    S 100,100,100

    F 150,80,70

    C 220,100,0

```
111111
100101
101001
1100N1
111111
```

&nbsp;

---

&nbsp;

## Bonus part

- Wall collisions.
- Minimap system.
- Doors which can open and close.
- Animated sprite.
- Rotate the point of view with the mouse.
