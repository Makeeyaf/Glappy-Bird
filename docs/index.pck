GDPC                                                                            $   @   res://.import/banner.png-495447ee2000b5377e44fe44842d6fba.stex  �8      �0      v^6V�鑽$�T�H�@   res://.import/crash.wav-c79de48f41db20554c8d2497fdc19c09.sample @�      �z      m�R��n�1����:1D   res://.import/duck_yellow.png-232bc3554e1e24c564b0c1f4a7391ecf.stex �k      �      t���'(�����0�D   res://.import/duckcry.wav-fba8d3fc67e53664a5ce48b5b164a2bc.sample   �f     ��      �@.�;G�<��oD   res://.import/head_wood.png-ece1a27e1557541aa723347b832145f8.stex   @u      �       �����Z��!!%<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�/      �      &�y���ڞu;>��.p<   res://.import/icon.png-b9450fb2459f5b277908511db3d050dd.stex�x      l      1"���s���[ TϳRV@   res://.import/icon_big.png-a1428ea629073186a30a1428ea3abe23.stex��      �1      ��gry�ܰt�JJU@   res://.import/jump.wav-63d72944e2f01652b323ac239fd6a06d.sample  %     5.      z�F��Ҵv4R���@   res://.import/scores.wav-b49db6827daa450c0edfa59675c7651a.sample�T     )"      P�gX;�~iI���D   res://.import/stick_wood.png-8114efc57ee6abe1caf8e010abe43884.stex  0�      V       �?¿~G�\�jyOeH   res://Double Wall.gd.remap  �x     &       o�������ToA   res://Double Wall.gdc   �
      �      ��&����-O��L �   res://Double Wall.tscn  �      �      x�t�����Il�0%P   res://Duck.gd.remap �x            g�i�z�gv3~R�:�   res://Duck.gdc  �      R      ����h�d�)�h����   res://Duck.tscn �      0      �H���^�Fɕ�B��   res://Game.gd.remap y            b3`���ƀ��YPM>   res://Game.gdc              ��?��?e\g��=?-   res://Single Wall.tscn  0$      O      ��:�k�c\l�R#���   res://Stage.tscn�'      �      s�>�4	k�N0#m6   res://default_env.tres  @/      �       um�`�N��<*ỳ�8   res://icon.png  0y     �      G1?��z�c��vN��   res://icon.png.import   �5      �      ��fe��6�B��^ U�    res://images/banner.png.import  i      �      �s�jd�wЖ�d��`��$   res://images/duck_yellow.png.import �r      �      5� ��`]����� �$   res://images/head_wood.png.import   �u      �      ��Ƃ���˧���   res://images/icon.png.import �      �      b>��y�q�=V1[    res://images/icon_big.png.importp�      �      ��,M)����_�'�$   res://images/stick_wood.png.import  ��      �      ��F���7��b�u�YM|   res://monogram.ttf  P�      �(      ×;N�.�ɦ���]�#1   res://project.binary �     �      ���-ej���WYc�:    res://sounds/crash.wav.import   e     �      DLS͊/��<H����    res://sounds/duckcry.wav.import p#     �      ���ީG�nK��m+7   res://sounds/jump.wav.importPS     �      ������[��l��|    res://sounds/scores.wav.import   w     �      �{��D��`�px        GDSC   	         ?      ���ӄ�   �������϶���   ��������   �����϶�   ���������������Ŷ���   ����׶��   �������ض���(   ���������������������Ą��������������Ҷ�   ���������Ӷ�      freed                                                       	      
   $      *      +      ,      4      9      =      3YY8;�  �  T�  YYY0�  PQX=V�  -YYY0�  P�  V�  QX=V�  �  �  �  YYY0�  PQX=V�  �?  PQ�  �  PQY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://Single Wall.tscn" type="PackedScene" id=1]
[ext_resource path="res://Double Wall.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 120 )

[node name="Double Wall" type="Node2D"]
script = ExtResource( 2 )

[node name="Wall" type="Node2D" parent="."]

[node name="Top Wall" parent="Wall" instance=ExtResource( 1 )]
position = Vector2( 0, -120 )
rotation = -3.14159
monitoring = false

[node name="Bottom Wall" parent="Wall" instance=ExtResource( 1 )]
position = Vector2( 0, 120 )
monitoring = false

[node name="Score" type="Node2D" parent="."]

[node name="Score" type="Area2D" parent="Score"]
monitoring = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="Score/Score"]
shape = SubResource( 1 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]

[connection signal="screen_exited" from="VisibilityNotifier2D" to="." method="_on_VisibilityNotifier2D_screen_exited"]
             GDSC            �      ���ׄ�   ���������Ҷ�   ����   ���������������Ŷ���   ����׶��   ϶��   ������϶   ���������Ҷ�   ����¶��   ���������������������Ҷ�   ���ƶ���   �������ض���   ���϶���   ����¶��   ����޶��   ��϶   �     
   Jump Timer     	   ui_accept      
   Jump Sound        Crash Sound    	   Cry Sound                                                       	   !   
   )      =      >      H      I      J      U      \      c      j      k      l      t      {      |      �      �      3YYY8;�  V�  YY;�  �  PQYYY0�  P�  V�  QX=V�  �  T�  �  �  �  &W�  T�  PQ�  T�	  P�  QV�
  P�  QY�  �  T�  �  T�  �  YYY0�
  P�  V�  QX=V�  W�  T�  PQ�  �  T�  �  �  W�  T�  PQYYY0�  PQX=V�  W�  T�  PQYY0�  PQX=V�  W�  T�  PQY`              [gd_scene load_steps=7 format=2]

[ext_resource path="res://images/duck_yellow.png" type="Texture" id=1]
[ext_resource path="res://Duck.gd" type="Script" id=2]
[ext_resource path="res://sounds/jump.wav" type="AudioStream" id=3]
[ext_resource path="res://sounds/crash.wav" type="AudioStream" id=4]
[ext_resource path="res://sounds/duckcry.wav" type="AudioStream" id=5]

[sub_resource type="CircleShape2D" id=1]
radius = 52.0384

[node name="Duck" type="Area2D"]
gravity = 1500.0
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="DuckYellow" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Jump Timer" type="Timer" parent="."]
wait_time = 0.25
one_shot = true

[node name="Jump Sound" type="AudioStreamPlayer" parent="."]
stream = ExtResource( 3 )
volume_db = -7.0

[node name="Crash Sound" type="AudioStreamPlayer" parent="."]
stream = ExtResource( 4 )
volume_db = -5.0

[node name="Cry Sound" type="AudioStreamPlayer" parent="."]
stream = ExtResource( 5 )
volume_db = -7.0
GDSC   .      c        ���ӄ�   ����������Ӷ   ���������Ӷ�   ��������������������ض��   �������������ζ�   ��������������������϶��   ��������������������������ڶ   ��������������������������ڶ   ������������϶��   ������������������ڶ   ����Ӷ��   �����϶�   ���������ݶ�   ��������Ӷ��   ����¶��   ��������������������Ҷ��   ���׶���   ���ׄ�   ���������¶�   ���Ӷ���   ����������Ŷ   ����������Ӷ   �����Ҷ�   �������������������Ҷ���   ���������Ҷ�   ����޶��   �������ض���   ����   ���������Ҷ�   ض��   �����������ض���   �����������Ҷ���   ���������Ӷ�   ���϶���   ���¶���   ��϶   ζ��   ��������������Ҷ   ����Ӷ��   ����   �������϶���   ����������ڶ   ���ڶ���   �������Ӷ���   ��������Ҷ��   ���������������������¶�         ,      ��D     HC         �������?  �������?          
   Wall Timer        Wall      Duck Crashed!         Score         Duck Scored       Screen Area       Duck out of box             Duck            Duck/Jump Timer       Walls         Score Sound       Label      
     �������?         �      �                     
                        '      .   	   5   
   6      =      D      K      L      M      U      Z      a      h      i      j      u            �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3     4     5     6     7     8     9   #  :   +  ;   1  <   2  =   9  >   :  ?   ;  @   C  A   J  B   N  C   X  D   Y  E   a  F   h  G   n  H   y  I   z  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a      b     c   3YY8P�  Q;�  YY:�  �  PR�  QY:�  V�  �  Y:�  �  P�  R�  QY:�  V�  �  Y:�  V�  �  YY;�  V�  �  Y;�	  V�  �  Y;�
  V�  �  YYY0�  PQX=V�  �  P�  Q�  W�  T�  �	  �  W�  T�  PQYYY0�  P�  V�  QX=V�  /�  T�  PQT�  V�  �	  V�  �?  P�
  Q�  �  PQ�  �  PQ�  �  PQY�  �  V�  �?  P�  Q�  �  PQYYY0�  P�  V�  QX=V�  &�  W�  V.Y�  �?  P�  Q�  �  PQ�  �  PQ�  �  PQYYY0�  P�  V�  �  QX=V�  &�  VW�  T�  PQY�  W�  T�  �  �  W�  T�  �  P�  R�  QW�  T�  �  W�  T�  PQ�  �
  �  YYY0�  PQX=V�  �	  �  �  �  �  Y�  )�  W�  T�  PQV�  W�  T�  P�  Q�  �  T�   PQY�  W�  T�  �	  YYY0�  PQX=V�  W�  T�!  PQ�  �
  �  �  W�  T�"  �>  P�
  QY�  &�
  �  �  V�  W�  T�#  PQ�  &�	  �  V�  �	  �3  P�	  �  R�  QY�  �  T�$  �  �  �%  P�  Q�  W�  T�  �	  �  �?  P�	  QYYY0�  PQX=V�  �
  �  �  W�  T�"  �>  P�
  QYYY0�%  P�&  V�  QV�  )�'  W�  T�  PQV�  �'  T�(  �&  YYY0�)  PQX=V�  ;�*  �  T�+  PQ�  �*  T�  �  P�  R�(  P�  R�  QQ�  �*  T�(  �  �  W�  T�,  P�*  QYYY0�-  PQX=V�  �)  PQY`              [gd_scene load_steps=4 format=2]

[ext_resource path="res://images/stick_wood.png" type="Texture" id=1]
[ext_resource path="res://images/head_wood.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 30, 369 )

[node name="Single Wall" type="Area2D"]

[node name="Head" type="Sprite" parent="."]
position = Vector2( 0, 123 )
scale = Vector2( 2, 2 )
texture = ExtResource( 2 )

[node name="Stick" type="Sprite" parent="."]
position = Vector2( -94, 511 )
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )
offset = Vector2( 47, -71 )

[node name="Stick2" type="Sprite" parent="."]
position = Vector2( -94, 757 )
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )
offset = Vector2( 47, -71 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 369 )
shape = SubResource( 1 )
 [gd_scene load_steps=8 format=2]

[ext_resource path="res://Double Wall.tscn" type="PackedScene" id=1]
[ext_resource path="res://Duck.tscn" type="PackedScene" id=2]
[ext_resource path="res://monogram.ttf" type="DynamicFontData" id=3]
[ext_resource path="res://Game.gd" type="Script" id=4]
[ext_resource path="res://sounds/scores.wav" type="AudioStream" id=5]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 512, 300 )

[sub_resource type="DynamicFont" id=1]
size = 120
outline_size = 2
font_data = ExtResource( 3 )

[node name="Stage" type="Node2D"]
script = ExtResource( 4 )
wall_scene = ExtResource( 1 )

[node name="Duck" parent="." instance=ExtResource( 2 )]
position = Vector2( 256, 113 )

[node name="Screen Area" type="Area2D" parent="."]
visible = false
monitoring = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="Screen Area"]
position = Vector2( 512, 300 )
shape = SubResource( 2 )

[node name="Walls" type="Node2D" parent="."]

[node name="Wall Timer" type="Timer" parent="."]
wait_time = 1.6

[node name="Label" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = 494.0
margin_top = 30.0
margin_right = 539.0
margin_bottom = 223.0
grow_horizontal = 2
custom_colors/font_outline_modulate = Color( 0, 0, 0, 1 )
custom_colors/font_color_shadow = Color( 0, 0, 0, 1 )
custom_constants/shadow_offset_x = 4
custom_constants/shadow_offset_y = 4
custom_fonts/font = SubResource( 1 )
text = "0
"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Score Sound" type="AudioStreamPlayer" parent="."]
stream = ExtResource( 5 )
volume_db = -5.0

[connection signal="area_entered" from="Duck" to="." method="_on_Duck_area_entered"]
[connection signal="area_exited" from="Duck" to="." method="_on_Duck_area_exited"]
[connection signal="body_shape_exited" from="Screen Area" to="." method="_on_Playground_body_shape_exited"]
[connection signal="timeout" from="Wall Timer" to="." method="_on_Wall_Timer_timeout"]
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSTv  �           t0  WEBPRIFFh0  WEBPVP8L\0  /u�| �0�$E� �ƿg�|"b���|s��3$!8�=_��V�MG�(��Ȉk�nۮm]n��G�U�6m�ڶ�A��=S�v(7>�bʌ.3S���f���(�̉坉�]i�G��)���FR$�1.t�0��9i�G�q���	���MY�E��!����Rxy\�l�����4h7�!��IF@��9Mf�s��bD�%�m$I猜������Hrmˑ���w#F���C�m*�d�]`R��2�Q���;`c�ERR�2��?$G�I�=p���Pv@I�����0�iO��jB�Rv���#���|���=o��쟲2_�y*gw��m�H��oﮁ�
�- �ڭ~�|�\�p	ԞK���Rwwww��x�ͫ{c7����k��@r���r���එ$I�ܧgQ�[�/�~���F��ڶnR��nS�4����T��cm���+�ș�;��f���ֶ�l���"2w�D�@�x�e�t������ܾ�˱m۴���жm�8e|F��W 32#����;pI��c\޽{��m��ٶ�3mҿP��z�
tQ{xXԖ����BM @$š'��ġ�8�%���HR$�����_����&b轚�eʄ 
b ����_�H��j���H؜=����$��Zx23��L�6��� �h2���ֳg���Ȥ�e����r5&!�AjL �*lv6����]|ف'�N2�z�/��u�
���ߨ�:y6>��G:&l�.5���d�E 4K��aQn�ƥ��:|��̟Ǘ�7W``���%�L����M��� %XV*��JP�מ5g=�2����|3�rrء��G��9E���=��I��kG��Z�{�j�$hD ɸVc�(<^��0{a�7����af��+=�;��)lYۥRT�{�n�}�˶P?�IG�R� ������#wp�Uf8��M�;��*	;���;�(5E ��#up�#ɰ]H�˫�4�(#5�{5��?-��f�eYA݋�t��!Fםb��O�CJ�=�W��,7���F�!�m�a=�2�<q$���?����yʝ��d�FDȳg�՘��J�����W��)�����˸����\�̒����w�u��qT�Oj�c7�_�,���u�����S|vP��F+x�O� ag���a��<Y�!l� ,_,�����$3�@2p��e�Nǵ�'��]�XZ�Zִ̺u/BK�s������W�d���[��%)�� n���+eg
�@צK�,��WQ�˲jw����zx= ������g����;���39��8��m-!�S�L�F���e?Hש(e�ĵ��V/�Xo�k!g�!��J�)�xqi�Sv��af���uDi����Կ"���8`��cY*�Y����O��W\�]U�i��j�!��RS��u$��������f#o|�]Fd����n�~�e\Ɨ��8PQwC��#�H)�����\7�nA]_{��N�!�m�C��N��qy��k��%��Fis�%"3[��3�<�2�%i���.j)}�ŅWz7�?����M<��S����ܧ�L#D�03aD��Z.&E
[GFl��8���z7=;����d�VyT�=�% ��#d��f�^��7Z��?"�|��Rv6��֠��k��}m��Hj��q[��ZG�j;���qP�8j��j20�
_ܓ\F��H{�x�RE ��5 =�V`�)�"�;�6&
�&��/ڏq�6��!Fב,�2���F��z�e�A�,��+fg�&�u}�Y��;�F�!�m�C������o#9Ϥ߻;-�D�Ѣg�L�)�!�$Yw���k@��]���r���Uޕ�'��IA#"h]�w/����Om���#���߿v��2s��3�(,~�����1d����M}�/_
[G�a��ۧ��#�xs��0>a�~R��7Za����ep�Iwxs$5w����ܼ����j=����������W��c�#��8-�F��K�����8P!�\q����
>�;Gx7��Q�Eh	�R
|������t	�P�˸\ynW�������FK�,�������ߛ��HI99��V���������ր<�R����h-I)A#"������<tI)��Q��া�����t%.l-m~oz'�s�2I����0Q?�I�A|� G�VyT�L��re�9����W�0	;��ͻ�\�5�.x&yr9���u$`V;H�\l�Vዂg�'��eO�H��o~B݋��@m��jc�����%{H))����b���;)/Ɗ�قw�;��1�Dr�'H0x��$�d��z�3I֝�~�� �|xW���4�@�q���t��%Qx����hi�{7��Ч+q�S�:��F���r� l�<*�~R����!�h�5�ז�1q�a�$�l67/�|��:��0��G:&l�U��@2 li�2��%B�^�VN��%(�H)����g^������|�2�DrM�3x�(�d��zH֝�~�ߙ"�|��a{[�q�D�ջ�%��r�K�A|�􉀮�,S�VcN�03a~��ȑ��c�@� S���R�s�5!솹O�7��Ч+q�Q�:�B��h�S��<�N��r'�轳 ~W߉8��'@v�F+,��RSz���[�%�r�e�ז�����C���r_3	;��͋#�����qSv�.�G���y�#C��w���Y2�+�i�5��]��C�lj|��~�M�溫�d*�^���!e��k�;�̷��[�s�c�����=��u=��;�Ýq�����۝���{�S�d�~���%�f����͝pj|���
9,M�yt�� ���Ii�jP�҄k5f	FK�ߛ��[�X�L� S���R�s��x�e�Sv��M}�/��J��u������%]�;3T�o�ݘh��ru�4��r9%��/��Yj�#�]��!l�<* ��0<�;9�F���N�1���Ԥ�8q~z��Q�0�oͼ���������+�B!��tj�����g�~���G"�y���p��Nq��F�ðݎ_!`{��/;ྶ\��̥}M~F��I��ln^��IBo5�(��B{�}��n�J�\f����R�F%��;Df���p�#�b�p����7>�1�[�qWߩ�%Ӹs����Gy��j���w屗��嗶�Z�.b=d�tZmL�����X���uW��TԽ-�ssVJ���+t�e�F�T��ƨBW1�H�<E��t��bv�T����,6������dwR��b��|�ү�^��hRl�mg$�bĸ��]�爙 ��Z��ӑ�yww��0V���bUS砥�r��e�R�ܵm��o&���G��\A6�T3m�j8~��µ�Cd���k%
��6� S4�C�[��b�PG�5�V#�VY�:�8�-���l��]$բ�$j��)^��|w���v�!~a���{��{�f��g~ 5%�I����OG����
�mm�K�x�&���1M,좤�6�՚�����s�+LD��0���xQ_�u+ �Ш�aR��Fnccp�8��(�(�se�vhf[l�Ox��^c�vL蓖VI�5�v��$��`���\}Ӱ�8��;)	(]c/�D^j���%d	O���r��$[r"�v� ��wQ����fH�?$�г����S���-�D?�DHt���J���̡�����������0��έZe�3�0�����H�L��]�F���h+����9;e�t���Y�t�W��T]�j5+X�s�R��J5�K��Y���[�2���/������%�.j)0d���O�aC�03aD��Z.F�;zL߶v��/��@��[�*�S�nq� �B�L���W2��Dl��8!+��cp�,�����u�;�?J��5����L��w����Ak3�,��Õ�z>՟��&�����2(5EB�&d.�pTDuE�n~�z�P�*I^��c�4�ah��R�fS�ێ��unj��vA��?���n(�}�Uq��I1��\r�ŜI\<ē d�Ri�@���{�a�v�؋=�$:@�� D4h�� ����XŜU�e��;X7Y��������0�X��D.�Qb�>�H��G�"��^��A���7쮇M�׸�5��Ӭ���T{uYu:99��M;�����q�Au����'��i#k� �I]f
+�lOfM��|�����29f�+DUQ2��	����>DF�q���~a��8��X�M�:CuV(k�e]&���ukz���<]��R~�E���]J�:��=�?��ᵬ�I��2ѬcT���N�\��+�o���ێ�2'g�`���i� )5	��;�k3��|c[�yNx��r�&�mV�N��� ��b-��*kX��;V����s+���g2�/k2ؤ8V����TTձڸ��'Τ~z�W����D�{1�J�q���E(�:�9��o:�6�1M�N���yd�^rr,|X>�E{X��"��aXN�@��ӄ{��J�7kT�_L�D�2)�[nn��)S=�i����(5F�|ˮ�5j^�t�^��N�-��s"�4�d���J�P���)UF��|��=F?#�P�x������c��2����<�`�`�� ���W�/��_ �<�]�V��p����0�l���{r�t|�.�	��������Z-H׫+�n~�3A�|��@ �XXJ�# �(Q�x X��' -� 9tRM6@"�T@�D�����9���E꛶jPO�L�PcFä��~Q��fkPg�!��?�<���H ��A  � ,� � @0�l���	�� �ssW�=�/ �3����,�}���f1?Ԩ�/��Q�H�T�!� Z � D�oe��@<�$�  �6��1��8�vՃ��(6�|��ߩY.�jt�A��  $���	��� R��PAHF�	��b��ZF�ZF�V���ˏ�Q��^ח? ѣ�,rH�4��7���Ц��	�%��h&��@D�J�P���p���~��n��@�-��t�Z��@Z��D<
��#�Fh���x������� aaQRH<@u�$�EC!�$�iƀ��x�����@'I�1
�Nk�[�l��C�W���B���E��Nx�e�-g�i���{�Z��'�������L����M��] ��D�u�@��_�N���T�NЪy>�b{T\���\ţ�3[�GA��$�{`iN�����V��t����-*���-���P`�P�����Gh(�4�L�!�r(���r�L�1�:��5&��$G�I�:��m���^
�Gy)�Ο�:�Y{�`��)�J�AlFl~���Mjȸ��2�|f��8x�*����i�d�sҞ��-��}�4NMv�1'�M���9֦��ޞ�����ݠ��Z����� � ,0s�8v-6.���]���6\���ك��=��,��,X�h��*vʹ���� $����$�cA&��o���_p�~�l:oլO׭u��j{$�L���׮���(�_2�[D}�A,�2��m�����(��30D�����s���n���G��e�vP�-�=�9��gհ�f`��m9k�>��s�=z>��G��x|M�M�9"ƚIyU�G���w�s��&�]�w�z�'��xYC��va������$�I7���O?��l�$r���2=D�C't��<�Bϳc�:���3����9v[MЇ�lL֭�g�Tɻk��6ZKGO�U��D�=R�tm�~
b�߳��^�P*�a;��
`m4�ܦ�RK�u��rn)>�~�'�?�nL֭ڵi�?	4yq
k��т��C�}��=;�-����4)��)2��� �h�)[��o�M�،�N��i�v�s�&�����S�U�2��!_S��2O��OZ#K�g��],uߥ6�%M�
\j�R�\k:����ؤ�k�G�6V�Y	�2I�6p���w�Y�o�#�E2:&�@�����S"a\ӿ���[:��p�e�3 ��cֵwy5��v�@O{cYv���c4ļ����������cB���M�UoTo��o˚ߪ:�8DGH��c>�hq4�帄p_���
���94c��n�d�"!Шf�v"��[*^�k��5wY�O�_���gW>5�^9F�$%�����n�X* Q����m�r�֒���vTQ����	ʰ�X�v�#O�>``��2�q�a3�'
��{� �~�z�=��)-���:q	v�A�^�� ��`�b:�9p�$�=a�o�Ж0B(�ǧ닿�3D b�0��5�pv���`Zns�58'b-���n>d9�rzٔ=P�~��p�#�7/4��}xC�cL�S��+NV$.G��"�8��B9-���
9&�d ��#���CfIs�͞�%�ŅWz���v �j���E.��)���b�ts~���/��{��4��n!L.���y�����N��h;����r�rC�0d������4n�U�g猵c-�VO4鋔��	��XN�Z��;��C?1��e_ng/���	��U��7\�z��/?t��@;���_I�Ul���`�g��#hE0��k
�n?A&(��cy�?��nܾXzx>��Ĥq��\�;x9���`:�ŉC8������_�O�|iw7�?v����k���s� �`Cð���:�5��3��	�	NR�!ǉ���RS����:������G3�\>���������)d���4L�lN�-������+?Q�g+�]�HNx7�_X�Uÿ�{�b�����C�x~��g��{�~la�]M�����H"O����D]�}���f,;���ou^����z:���'\b�{�!h��v���P�q��6]BXO���3� ��,?�^��`Љ*uf�U4�N��(�N���˿38����]�|��!��]�ҍ#")ҵ�9D�g����ZwSXl��*��s���78H��䡤���&��5��-�q��0�"z�Q�z�ED�H�=
�N�����D�s�o�5ų�~��B��,U�����4�{	-�\ET�̨CGX��&�i�do�v=�Kvb�D���C9Ѥ,	�P��g�W7�;��P��ͭW.,B6�ב�y�R,����o�Z���Z�l1K�*pF�Fa�)��v�SN�R�
�Ɛ!�N�!����p�1�U�j��v¢L�	��[���-&`��A�w� �X�k9������ϋ�
bbwɲ ������_ZAӽ�Y@<DsgXUd/5-�D���G�a�%>��`hR �yA�����-|�M^�bQ<�-����� ���^<@�iI�:�C�,��l<��|Q�;��0��Q���jXiD9�3c��}�'� �șҍ���������_�ӕ�Y+f�W%�������U.�|-���%��K�U>/��ɴ�<`��'�ؓ�)r��{g���'5)>N����t %i��~+W��s���ޱ��Ĝ|���D&���Ĳ�z�I���ז�����C��fs���w��A�-�,?`��Vcdf/O�\�8@|�ٱ�}]8]_=��1��G:�r+7�L{�W����8������Կ�������ik2�5�4���<$c|��~�M�溺�%xV���(�P�"N�P�;�<������jJBĪ�烦���<h�U��u}�Yl(��Q�f1�f�[������H�cI۫�R�k�0���{�o|���*u���HD�7�]/��[|��S�����C����ƺ��'����C���I�3G��hv@b=���qu��"��Q&BZ����L]Q��.
 p��|����z�H��_�ƕ���"A���G�,��Nt��c��1���K�*��Ь;����c�J)�z^R�+k'j�D"��ә�X��j9 $��R�-�?"[���}�p
��`�J~���E`࠶^�B���g�|�b"8�������/���1/J�[wO ����V�W�c����j!x�MtP_�a���u>p��[;��Gd���p��`�P��J�Eq�uIf&L�kC��bg�L�F��hV%�S�FI�v�E�f���M�NC�R�pg��b�z/׍�J\�R��_�����_~`
�����?.�ڦ����8 ,Ց�@�)!s��f1�!�J6ʶ(`��R_Ր�f��l�'�u��+Ow����ʹ���F �xc{B��jŸ��9�7����ʍ7�!��Hj>�e��B�(�T��Kx)(UMt���~��V���7�P��B�&>F�p�n��u�n�7�qƑ|VEO����	��%�<��&��Ѫ���;�X�:����!ʩ������n�jkR�~)X3�^�\�����r�z�e�����̷���m��CȠ��!��yޘ�^�/��j���{� �F�E��R�R��?l̑yA�T�偻��~r������~��3�L���支��K��������nQ����b�	�������ςr��:�XR�cN>_���$�K���zD���tj�-w>�PH#Ѭ�am��,<u1�5��t}��n#������uZc�¨��6;H3Jt˳�:.�@kv�t�?�u��������v�yfjx�s�����{	�s�ܶ�Wm?��a�}���Iڮ�X���@��q�7�8�/-��e�R�A�pT�F���a�/&9œw�a���# *p��A�����n�suS��W�d�	�� �Ҍf���eԽNڟ;țby�W��5h�z�+rB.�--!�Ѡ ��H4�ICcs`�5r���n�ļ(�[����%:��7��rK0d���j��	��MF��<cpS_�}��Z�pQ\x�G�̲8��N���2����?�ө~R���xջ�ّ2������JM���vn-v�H��ln^��9 ,Uʼۄ(�����;�t�<�@2���U�㚣�x/g(`\��]��C�D݋�t��_�^�`@�F4�0d��t�ݚ��7��~��t	a=�2�$��4�|��7��Η4��!-�i�kWmsaC��p\�QkXw]	�j�u��(�k�-�����!.T���'���h~6m�g�� R����Ds70��*H�Ɨ�5��Dg��"��Zx�cP�d�K+�|^�Vv���Y@��� ���bHd��+���OáWq����ٱ�����0I[#�p������Fk�h�)���$+�OK�]7�z���H1A��m��*�y�"��;-��'�́y��M���ڭ��`k	�e�蠾�.������ܧ쌔"�$�]�Z���cI���X$�nws�8�mi0^ʁ*���Ky���T�Ӝ�6�w"D�����݀�|������9�p� l�h�jL�p���V��l����V��m,Z�Df<�U�N�����	�t�H���X�(��>i��Ǖ��$�I7���O?��T�x�{ԁy�ȳ}Cϳc�:���3�#y��Io��~��Fk����j�t�%o��g��i�6u�ZW����<)2 WK.#
����'�(:	���������\̉#i�?2^i�ՠ�wӳs6e+Wu��-/������CHh���^x�*s\�b�<�_�H���v��Rs�W��]���e>���H���7x�kӥ欧[F�L���)_���)�x6�LB�i�L�7>|PV�v7W��?�<��,Z�)� �̜$�����Y-�g�<�M�����Մ�91/J�<��+'�Mk�s"b]\%�5Jm�D���~j��M��uᥜΞ*������'�����eϜ��V��l���`�P~l��6�̒��=Rz��H?.!t��� ѹ�êD���w�s�"��o�L�
�VиɅTv��o��YP���ZO"�n�#M�~��0���TRs�\H�\4��ѱ�I��>�]�<;�����n=����h��W�v9~P�r!���-�?��jkh��ⰻX`AZ$��Z:z��z���v��-��/,��]HY�]�%>���+�Q�xF47Mk�'h��M���S�X���<�+�Q7n狫��.��ӷ�G�p�I�㔯�/x'r�7e+���o?��2���ܰ�?����nws�=A��K4�ICcs`�5rS#�E	�a��={Iش�����V��]�J0d����V���J��#�s�H��_��Q�gGY�1��n�< K����ְ����m�������(�'D!�6�Qs����-�����mDOQ�
��\\����w�Ia$����`հ҈r*g�2G��>\�rѸ��GF�u_�����[F0�?�.�풇�t�軸.-���%��K�U>/��ɴ�<`��'�X��* �y�T�t�	�zˈS�VZ2a_pM��AɅbN>_�D"�n��bYH���+;a�>!k{���I��6�~He��`sQ� �=�g�>�u�t}u!܊ƺ&k�<.$��'��=�����ik2�5�4���&�H��mw[�C�t�9ʲ���V�^�n(�TS"V�<4���5�E|03I�h�0f�R���咧H�����ιl�G��O��ۗnws� �E	x�\5��d�-�D�������;�R�L�!C��w ���D��Z.�ܧ쌰��U�I�eq$µ�h�>�gE�����pÐD�T����.,_,�8����k#�,z�	QB=guh�k�݌-�(`\�z��̟�-W�M��I�����=����i��NJ.!N�Z���S�NK#D���T))`탞ca�1?����j���W\�5��M&p��\�R���_�`e�{����~�fհ�#Y���6-��n`��O}�&JP��y���N���%;�hE���\�����
�H���*�I7tq�x9�|�Ӑț�[z��z1��ٱ��^<��d�����hT������$��Z��������Q��0�kȖw�\M3�)�u%�V��U)ϳRMyD��nw�
^���Ds�44S�q�c̳Fn*�a�[ļ(?Tʹ���D:�����l�%2@Ԯ0�/.���\Ɗ��9��	#
����'��!�$(aB 6zE����v��!Ke4�����J�e�"��a��-Wc�6�tHj�ԔF���1����\)�'D��v0��G:&l�ێH���ԡ�1�|��K���:wۘ(��]G	#�!E�:��kϼ�����Ð�6�є�D���M�D��~Hejn���n2�]�T׆q�>3�3Z�!\c��(�$Ad�+W�����P�Ds�4��!h�}B��4��<k乎��X�d�ǅĠ�Tz���j��L-<Sx��V��pPD�T6��@�k���$m�%Ø���&a��0��x-��M}�/�v�őT�TF3�z/�T�OjRa(V$5Pj�8��M��fs��$nB�b��vI�$�+����x�{Z�I�\�ʐ�6��E�,��e�]N�Z��w"2	Q?��2�r�m�r����ؘwouw�Y&BQ��YF���'��_!����[g	�k\c�!�H�3K����� Қ�+#�!NRћ�#n}�@��O��]��	��v���K�}x�ԋ`s`�5rK�E��,?M��t���|�i��nb�YI½軇�Ex,e
M>I���蠾���
zJ�YY�,D�:�_�#��~G_	��oM��	��%�����aJ7^\r%��W���� d%��V�őT��˄��&8���H�~R��cwm�M{��b(����7V�I�k��XC��fs���wB��Z�9:��F��H�$� ���Hk��8�����8P_"�k$P�"�ehFX���]�.�ÝTP�מ�	���|��AR�k����y|��E�z���B+7DDD���>m4���-#l�_G�Z�o�K�.⽊�	�a�v-�����D�xb��u��z��a��O+Z!���G���&��n`��(�&Z��R�p�/{�T,��˩o}��j�3cN�U	�:�xy�����ǵ����W_@՚a|RWO�>�R�p\�;�xP���dO�p�E<ʹ".|�Nb1'�/|
Y��R�.Yhj2��3P��,޹գ�m���r񴏃�����7>.$d����E_׳��{��n�k��,kkhM������v�ZS�GG~;7C\tX������o�����V������%�J5E�*�]U�UD�Jy>Z2�Y��*�.���5#9�߀ό�7y���Q�) [remap]

importer="texture"
type="StreamTexture"
path="res://.import/banner.png-495447ee2000b5377e44fe44842d6fba.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/banner.png"
dest_files=[ "res://.import/banner.png-495447ee2000b5377e44fe44842d6fba.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDSTc   _            �  WEBPRIFF�  WEBPVP8L�  /b�_� �mU��},!��D���n,��F������!��-���$I���T�g�}8�m[��O�k��
"��	�MW�W���4� ���C��� �G@T�)���HI<�FqO;�i� l�A#D�݅���X��U�b�����".��������c�j�����e���n��54;;�;�m�{a�^�ǎ��X �@�N�-3aJOd�B��0�x�p�������o��s�N����:Q��T�x=U'����ԩÇ����v[{�:rtQ�l��8�����̜�错��ɯ����n�H��
����k������1GݢՐk�^�Rc���X�rd(�'u*X����j��T�y�m!xy��!ؓ�I�_GV��x�V�2dYޓ���%|��#�:���:rQ��R�ab�Mcb0�92L�'�ı�	]"�0���g��!���!�1��*M�`˾�����N���U<o�Tz���������~�U�)���Vg>���U��<��^^=�S����<�b^��G�T㍎O��w�����j,���L��#�܆>�>n��9Gym��wu{��{/���!��/��v�ʕ뷤�>�c,}+�{��ۯ��G��wE�ӗA@�"�x�[�}׃�R�����K��r%�RE�H��e�<M��/˲�"��%I��_W�n�&�H�w�$�܁����5�k���������ؕ�o!�wh6nqsR�Z�� {�<�ߠ����\oo>~�<��\�Cx���J��.����{̋�.�jR�x]K�?��W����?�,�� �#��n(ݾs���W��!CmyXA�Z�N��5�����W�e��g}yx&���g��ݗݏ�o���2X�}�ƨ�_d�2�'
���̫�E�����)�g,��@��gC��,էb��Q�.ń��\��kHQ�6�k,�i�9u���H�Z��{��-C���=����S'��=q����NËS�4<�Tؿ����wJ�G��=\1�������9�g k�	d�O��7���9i�N{�K�֟��Ծ�U��iJ�G�,�oƈ���;��X��=�]V��<��O�ԑ�7����cwN3\���1�3����8�}����*,��k�\$<E���G'�J��oÔ�����a�g����d���_x܃�ps�f/���9�K=>�lժ��mA�B���V񶺵�,2?�������ɥ��2?�4�f>����u� �EQ�Y ��;�~aƠ�:/�%�Z���e��\�#.��|p��M�!c�������w��o��mӆ�+�!���Z�Ji�FЁ��6�^�j�"�M���k�JN�}���j�6m\���r�,)��<�K04�x�M�� XMjP,"x�����m��G�t<C6-X��xnѼdQ�b�!�f/X�6o�,'D���hd*1&FA*PZ���$Ɉ�z$0����T(���<���wY��� �����q J������J��!d��ӜbL~���!$I�N��뗔2�$��$���V��5�ceV	!����j���O̗�Ĳ-��WUq\+���K�^�$��h�"B$��q�ƵZYE�j���F��,�ca\U*@      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/duck_yellow.png-232bc3554e1e24c564b0c1f4a7391ecf.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/duck_yellow.png"
dest_files=[ "res://.import/duck_yellow.png-232bc3554e1e24c564b0c1f4a7391ecf.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST   {            r   WEBPRIFFf   WEBPVP8LZ   /�/@�mS�1�&��F�Ǜ�	ܛHۦ:�]Á�������A�a(�$5�B,`ap ���}�R��	H���r��W��(x��hD�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/head_wood.png-ece1a27e1557541aa723347b832145f8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/head_wood.png"
dest_files=[ "res://.import/head_wood.png-ece1a27e1557541aa723347b832145f8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST�   �            P  WEBPRIFFD  WEBPVP8L7  /� ͈i����X���O ��FA�L����0����H8�e����l�ֶy�_R����HʰF��9n�z���hf�H�~i8�m��Ƴm#����aE�?���ȶ�főd�
<����f(uF�c<����ٶm_�NӦ��33O�8���\�s��ag<�3�8�Ď-J�~��9��	��m��H���&�ضgw?���ڶm۶m۶m��=ƪ&�!i;�����¬�=�h�5k�ܢ��3�Sie�K2]�˘�Q�
�,�2 4{j!��	%��K�Zp�� �� ��Ԝ�ÖX�6d�y���	����H�3F!o��*�^HP����� �@�įмV�"�O�w�ۛolZm�h֜�ƽ�����RwѰvlW�N��p�q����;��Jv��ݴ��t�Z���B�:k<�n��9G�*ƍ��v���
W��o�O�j��j_k����̰��ұ2WY~'����d-�-���|�j������������vMˁ��iS�	�5��G%b�5bz��?�>6N)N�&�
�Z�df+�}V�?�\��������T1��ԍ0�P����ח�SPĬ� i�ڗ��=bY	� .q|t;��5�줺S��Z�{�n&Nu6_����̯��G�Kz��h�{�I�E�hpx <�	�@Ǿ� i��v�o�������T1$-$g&��:����~����n@L+��%�m� ��k2�=+'k��6�+3����T��7k�T9�]��0�x4����=�s��2�?_��k�C-�&֟р���얘 �.�9�����='x��5�ٗ�i<*�+�W��J.��Q��̗�i;��R�z�_{�n��[����q��+��y���)q��{_����ax�;��r��n��G�g�J-���A��=~��=�em���]y�-H���V�Z" ʸ2�Fz"�|�6���a���︥�L��2��u�vO��:�D�y��.��N����H������'�+*���ZF?v�<�W��S^�+j�-�z�a�7�eR��=�jv�\S>��۴��ĳ�����=����X'�;���;RI-���8`�A�L�P�WFV�&ͩ�c�A��p����bW�*ͥ�b2�=O�O�13u�O��ݧ.�,�<�b�Kx�� mS���3�oF �I�ʓd(��[J~��g�^��w�u�R�4/ � /�<����R��\q��n�*���D�C�K�C���� �}�@�A����f��_� \��0���\$�۪ ��s������/(�Y$� �
�)F�����˛gIPo�c(���<f�_
p�C������7�ͿnP�I8s=K�I�O��*��$��'{�k�w��$p1n��R �ʡjR@و6���E+ܐSў8-�Gn�خ�wӄ���GL�f?�%B�D�qY�����o�������H���w�6����<{�0B
~�J
��ף8Yj34�McJ�R�� g�(	�ޫ5�Ln�0 P��}iG8 �>#%���(�\1Vιs0M��2�L���l*����-E �w+���۽W�ʉ�����2:>�����yh �OŮe����o��b�4��G@O!D0�;��;/�u�]���wB� pz��w3���]�߱���3��^��\�Ψ:�֗K�z�u�z䑾6D6�+���,��'�����1F]L��_/����G�>B.�;[y�n�*��#sb--��|�� |�+��yO�4��#�`?PA@��Ż�2�S0=�{��ݹ�꽽�@��;�1�6��#��ˉJj���e��� yJ�:z�1��j&������LmLj�F^hM5�o��,�l���η-7�`���UJ�Eu�kO�iݼ��E�H��u�<�]��J�gr�/�W���1Ti#��dK~�n伕I��F�u��?� ��>fP�GG?9�%E~eq�7=_h�á�4u�)C԰i>ʅ�1�r�kZ��d�1V��[���-����=���I1J�s�{��MP�^A�;�L�z�#�>Uݚ]��e� ����q���D?g�A\�)@�!	ܞ�D��5H��<�w.r‪��s���c_q�1���{�P����w�6�i7��i8�O#:�x֐M�}��~�~쎋'�����<M�M�Mv�:E,�d$J=���BE �SK÷��&��>��3���ۋc�N`�k�%��[`tΤ�vb���ǡ�B��!bᔝR�U�ڢT�bц�Z[�>u���}U8�y�L�;0 BL��c����1þ�6�:)_G�n�Dju�H�o�(�P >{@
l�B�uq��8�ۘV��h]��+ ��x	��������ut�m�!>#�#Ę���~,����6�tgm$��/m>�Kv�/y�X�ذ�K(>B-�Z���4��d��b�5�E��=5Tf�y��ݹbz8�H��jf��O�\���ύ��䓔�\T&�aL���PQ0h ��/a5���e8��"�Ќ��Џ!���ܟpLO ]�{
@��F��9%���ЀJ�n*�0-���`^ (Fl��.����u	�TM��5�?D�U�f�4P��T���7�G�H+�S&���К��Ϳ~�9���_φg��~[�y1����˹~�ovLcuT�!B A��3ax�0 r	!�t���6� d(��z����QG�Gk���j�p:b�����4h���=@�X����X��QK�V8����!�g#�r`I�2~���ҭ��gm��Rb���,��eM�$���GW#�F`Bm@��p�.9*�Q"� a搈'",c�#� �����^���n���x���_`�:Dh�$�����s)��(�� �+BH�I9��;��{��n @���	<4 ��V���� ZD�$q�$`�3�?��$��VK���4N>6�I�}�a�5��mq0dHZ�L2�\����T�������f^pXͰ��0'�=�٫�{�	Kw;��L�7�-o�L'����^n
U�~�Ov��e�3M~[-������/�n,m��ޣ��f�Af��K�B�r��k�D���,MΣ����r"�^�!�e#��,oF��h��� qN�[�R�R�}��&�mab�[bb��%L&ڮ~��H)7��+0s������yk'vB�������A+E�7k����'���N�W�]�|�瞻Kd��������9y����!��>��[��|C������Jx��%۞>�pWڍ$j ���Û�L���"�e�P��9�rx�d "a�r�����&V�������F���=/l7� . ��$�U�3��>�t�3D�="��d�4�7��X�|�Ot3�N$�ˌW���f�K�"�rc�DU=�-PRD�Ȏ���z��	�6 �`�og�t��
v�b�v?0�I9'�J����8�8o�;*6νv���HG��H�SL�ѣ�#� �Z����˵�}�W�\���ԫ�ή|[��=�hA��V3�s-���D֫��Nz0�S��$YF����QAC$��j�[Z\ث�Q"B^bo�<{/n����      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-b9450fb2459f5b277908511db3d050dd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/icon.png"
dest_files=[ "res://.import/icon.png-b9450fb2459f5b277908511db3d050dd.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  �           �1  WEBPRIFF�1  WEBPVP8L�1  /��| �(h�FJʟ��{	D�0�{(�����$+�:�2��R]=�-���폔h��������e]kXg#L�t�/
�lh�21�D0��  ��(ݴdh��+9�8��dN�sP��cN@��]u�~U]��wZ�� I��F���cjv1 P�o���Mmۧ���G&r�c$C�ԥ؃	�@~t|@���X�0P)�5�!�#�~�P�PC'�/A{��xJD�%�m$I猜���ލ���k��0�+^�
���m۶m�]۶m��d�3����>r�m;�茭*��*G�,!�����>�ض3���I�m�أ۶m�N�g��M3`�P��mW}����H���1��"8�� ���Wx�8C��V���U��H�� �@LD�l6�  ����`Kx�.+jk~\��>��/ ��˽��d%1��DLˏ���mC4  N	qqXpr	���f�4e�N�A<vV�G	�ȇ&����8l��m�! �����Q�Ԋ3cy_�n@H+���8%��a�yE	2
�BL��=�oh���I�wo��G�\�&��C 01��[B@
���- �}��=e����T-�).m)A�q�0N�F�$� �T<M�I�Gr�"��z'�%�qX_�-#,N���7��MD�l6�`�� W��	 C��0��[)���cKB4:ʠM��V��Y�%<Ӊ=/s�|h�X�C�m��G����욎� ��b��%��δ���j�-3�8��>�M�H}~&���`+?��%�1\e������c��ꩆ�:�-��B
����5]���'�U�B��c���H��z�]�Ɩ���R!^��]���0��[��&g. bf����t�ٲ�S�m"* �Kʀ����J��0D� ���E�{e[bRb���YKx� ���i?l�D��m<.۲�xE��+<�
�BZ1߇�zv� L(�n�b����&��:��:
�];�l꯿�O��[�x������&!�~����:�y	1�����ch:���R�2S���n�"ۍb,��ne��>�5�!;���e��W�BN��qJ�>� �� ��� ��ϰ!��[f0�/�����@�\�4�zUj�� W�X_��7�W�	`��i� ;rc3�"���,��X�x,�D�p("�$b�]m�E�<��Z�0YJ"��δ��.���2%�:~��Gh��b��v�W��ݟ���aÕt0���7A�Qf*!R\�R������#��=�`�DL`JQ�ݚ���m���Z�RXL�$*�S�������1��;�/APy$ǽ����I7��9`�H=�.����2y��@�\� �1���BL:�&�F���d��ƑS�m2��[)赜U��CLXj��B4 �M��=�2��ݠ��P�Ȍ��t�V�G�U���i7Z0V 5��X�x,�DhEķ�T��3P���<�X�W���V��a���+��D�(JjE�d)��^g�؉����k|9ۤ߻bI>`z�6��e��h���{�Oo�0�ʕ�o;�9sMWޔ�l���[�!h��َ+;[��--�H�����߻��2�?dgsA`��E<��f��t�a`O��Y�0N�(dc68�]���X�} ��ᅋ�T�q&�Wx�p�G�pIX�R,�Q�."f6�[`1|��R@5��m�ܣa3�:��}w���D����1B�9���xl9 i�B�C�G�\<��{(�oG>4yX�P �_T=�r�<���$��:(w~0+A[����f�%��},�����9 �ӹ�s��T���9�|���m�]��뵋�4���-�|e�pe�:�X�-A�v{�?�!;K��J��@\�{��'ѹ�LLV�BLD���H�� �� ��0]�M��2���[f���^D�l6�@9sQb2�Y�M��21��[) O��4 PL�6���I�\�d��J=��/�|h��Dp�n�`�`�d��v��Cq�BZ1߇�R�#��\�>���n��/�<	 ���^�Mbg���-�&������$̻7��#b20�����X�-�0���n��b*'q}��)<Qf*!�+�S!���z ]*�����Gr��X_�-Cw7���U��n1�, bf��r�bB|��R ._����I�>/ � b2bKx&J�A<�k7Z0fG>4yX�P pdEI��a���+ !���cAƗs��|��*s��m������&aޑK{wp��\�����Q�N]��X�>�����'����ىX�-!��ZƋ��<��È=P͍)E}v˳��G�>�l���������e�b��8�DC@<��)l���N�s��/<�w!���#9Nޏl����2�ո@�Uz�ڦێ��ۀQy�*�ښ�>��n'3��-�3��˽�n����.Ǘ���p!-�{�KP}�zM���<-�'��o?e�H�p�X�x,�p�ݦ�.v"@8���>�݌�@<AX{�i�x<z�v�Q�Ԋ�+J���d)��V����wA����$Ii�{�u;b:e:8Pz�]p;�Y�B���[B���!:�(-:�2#��%D����S���.9d��1���nyv���w�����,���(3�е)!�i����ۻ{�{͌$d7CU���S�n_��]���{�����	��1N��C���)`� R�G�j�� 7�^x��B8�Gr���.����殆�����,3�~z�q���n��c��kx�{��`M�%�����hHn1��{���m_�-�X�d���+�6m���m���^�Dm͏F��wh������ș�Z��Q��ȷJk>}JQ㣓�T�h�y���f�O�ᫍ���fA*M�˽��M�s�� ������w�g�4�ס�}.RX�=m���
(.Zc}�~lM0�}r����+q^�
�̽%<Sh7Z0v)�5��R��m��b'�#�<ע�o4S&_��1Q���m��\���o����,�MK|a�P pTo)f�.ţ(�)�W� �w��R!����5{a��xb���K�f2�����'͞��㖸�^�/���z��t�`�-�l~H���L��,
�~4]���F�Z�f$����?5[F4�.���h�=)�Ү�'�Ej�}��ז�����-���y��v%�Ԭ�9�i�YRo�͊��V���Ͼ��ׁ�^�&�YL{�ࠦYy>f�[L��ͼG"�o�EͶ�h-~��,J��	k�s�[����*�G�.�ǮhV����_��Z�sT���"�i��f]�6[�@��_����g�h��վB\��/a)��2�p���w�rV�Tb�hT�>�{9�b#�A#�}�#�{���B��0�1��X��L�a%կ��[uݵ��/��1��)<�_�0���4��S۳�/ok4�ip��4<Y��$�;7J�Cȷ$e�1��)�Z�>>�;2����i��6B��ф��a��u��;]�cc�.٭����]h���ܠh�M#�UXʠvS�Xw�g��=]� ��W��˟���□�vf��l�2��?'E��.�T�"���E��Sns�\f���X3ޜ�h9ـ0g*�	sS�'؛��aM��?dg�	DT-�),�r<;J~�������1�6���H�j���1"���G��D��=i/y�
+��:�>vC/\8,�! ��Хbx	�}mr�#�9BY����\&��ίDUMD�vؙ魯�.�t�1$~BT@�2p5��n�������n��ɏ�f�>7��^�S�oC�p��N�&��rfT�sO�Ѡ�I� ����B2�jR���y��Y�Dg��j$2���}����-�sx���t�{(�ǉ� ��o��%�+|-�{@�#
�>Y@�)�M�6�5�k����X�l{}LZz�x�/nb��$&�^g���ݽ{v�7j�+�;�_�ٺ������'�&�U�`� N#9M�Z���fQ>����?��f�;���JTE�&3��Q���?6�27>`u��\3��30+��6�3k*�|�0`&���[Ă��9Ir�l�(�b?�J'J"*"��I"�V��b�b�ŋ��ML��EY�`F��z?��M~���K�>	�"3����1s��
��:M��?���x�&�Z�.[}�e<e8��AO��]�����o,�l':��h�^r_ �F�j�(�q�ݵ��w�hg��P��/���X�q���0�F`V������h���GěV����>,�D�����rsA�F!y �<q����([�����Ʌ�L�v-�7�OC9x����zL�oҀFr�r�F����|�����W1�����DKQ_kDhQ�6_�$��G#��0?��b�M�wz����YF���a�y[��V��=�At���Dm�m~��"vk9��7����1r�7��O5��i������-fh��Gz�~��cMm��/�6�AvSǅ1��I�����IT������,�W�����P�0M�?����y��F�ˈ��:h���NQ��ݾ��NSЇ�P88W������{�O%׆�!V'6����s��4*K�{�(�j��qQL�fC�a�� �Y�e�V_R{A��&_i�~
�G���*s��b��T�âNE��Y���D�N����=�v���w���aƯ���P�
(�j����Mf�fc�a��0��
������`w�B2K�A����CE���������l�'����Bd�'��PòEQw��j"wXC�e9)`�Z�Sc���3Rh�3�k�.�(�1[Q������C�������Ri0�DV����˭�[���S���&�m��}�!�~����e�0�z:���̕�P���a����o�m�B�Gg�C��^�0��E�(���!��e�`>��9��^��ɲ�5��EFW3v1�i[�<eh���S�����̐lc����;0/�4%7-��d��V�ZWYϐE�aBb�^u�Y�&��%2ֺ_̐r��;b;��'�@�,�n����50DI_Y�Ә�l~�����?+�Z������v>���0Ko���'�y|m���X��<�*	�ޱL��v�����e��	?�dH^5��?ڴ�n��n��ֆ��F!g2k/�q}#��y��ҞKb�j͸�/����1�'d1Q�`�N�A�L}�#tn�h��,>���Y�u���Oh#9�)�1��[n�a�ΏI}����KL�N�f$�1ph����c�皨2����'ȩs��7˨�8���hΝ>�op���$	k?Ğ%Ͽ�`�Jq���_�w�ޝ��<��1m�e�0$e�0�!P*uas���@��n�%�CJ���A��lƾq�Z�9����nFcq�̈́`@џ��Ë�͢�_n�R2��t�.�<f�ӑ�j�$���@g�/���� -�ߍű�P�ƹK7a���(����qC��ǭ�Ͻ�9��i��:]��~�(;zO�'
��䰅-��g Tϳ���]���~(Ǐ§8v��!t�?r�"�̨�EM��~K؜��
H��/ͷ< �WA2����)V�Ѵ詳���)���_�K����,�D�;���;DhS��~�X�s��;�lL�u2��U+6g�#�^5�'�-�<r�0�zO�ʊV��_��;��o����y,����Jn)BO���5�bv�k�+-:K���dptՀ�E��CϱM��^Ix\p�0�8�<Y2�1iԢ#ِk{B]~7��X~55�l�������z��8;!���\�������G�_Ah9�C%;d<5z�=�|۳��88\�$=o-x؛��'�]��=�Q_=�w��G;o��x�m��xڈ��H�-�L�a2��GS��ӊ�� �u:��0E�3�CQĶ,���;�7{��R��^x�; ������Wn=z:6��ޭ_~8�o��E�~���7��G��q�&+�m�Q2�a�M�؛�ѷ��o���fFHޜ^�< �o#6~o�,i9�9^xC������/M_x/�F{~�иǁ���tv=)l^��!�Q��y���CR=�i�w�j4�T��q�H�od9A:�6��Ьӈq��~;�����$��ٜs�F���GHy�<$�����k���<u�� @M��׶�!��=D�k /� �������IZ�w��3����$>��_~ӷ��L!Y��^���B��1�d:�Ƭլh�`׌+I��oi����7��\�c!��mR# !� kI@��H��Y��~�T�K���U�$��$��zsDH<^��9�c��	�5]�x5�]�A�K[J�jYrS��ُx���q�
Vʘ�ƘF��3s�.�칧���Sc>e %,@nx�����V�f���%�LL<z�����o�"^���Q{aWt��>�l(�G���.Z���1�}�&�Ɓ��ѝ��O ��l��3���n�r$�TZG,=�Gv��듔�V���1���rCT���� 0�+���fGL�������q�1c�Fe����~v��������y�?�\�r���aV�B  XB	����J����u����(��h��x�����aFBv���|B��v�=K���
I��i�~
�$]֌~��h�Shw��û�;���P��O�l�
�
�3�:�����T�n)h/�Z�^}S���:W��򂁄P���N|�E?��R1��~�VoUa.�[�����7�"�9�=h.��^�	��h���^�˦d,X��������߯sk������%ҡ}��nlM���⦅��cL(�b,��W�M�p����w~�X'"}�ESW��bc�7���GKBl��a����ڻٵek ��]�G q��ߖ8B̫5��w���0��R�0��5cN��yXI1t��v��|�����  {֐ (��\�r�$p��	d,��Dmk�h�P��]C�G��\@�&,�+ڏ�E!��1So{�G���������Ɯc�	#O�m���u�XL��4�f:s*��cl����5"f�EG,����q��<���%��D��l��Ӑ�}��ʲ��L����	��J�#vŜD�/�ۋT2�����XT�������akG{�gbQ��֮�E�5c����a�.V����0��/�-f;bl3�|��ɷ�݉9��z$>��
yB�-�f�݂�؉�e�p����U�u�S3f���r��uFo3���ʺz���DE5DF�v=��TÚt�V���F�k���-� $:�ơ�+�`Nhx�����:���k�Av� 5W�-��!��W�[5��U6���7�K�%^�d�L)�[�%?��=e�'�L%t��}������ݪ�0�����bg��$�� �% ��dXV
� ��١iP�=	ݶ$������ ^Py$��������b��ܧ[h+�7H>`���oI��H�L�67��BQ}M��n�o ��cK*�dT^�J���G��fs��u�0C�*ǚ�Y=���Zf�]>VU� �Z  ec"���`�j��<�`��i	܃\"����^=L�C�:7���ٍzX�X���`R�
N=g�&M.Z*��$�"$� K-z��#�<W3�K�>O���ĢQ��:�v���ݹ�:+u`z��-;��k��=ލ��V�O<��Z��yE	"��}Wì�f�~��v[�~�0_X)���Y�-E���������R�Q��g$�seʹ����V���oSN�E^�1t��b��<ś7p�Q��p��oNK�1�"W��?o+�#+�F���j���+�"�}�&�bKjj�7�*��c؈6���Y���/��lE��Y�4�S�U��k)�&ZD{̫�K��p^3�Ed<B�8�`.�D����$T�VIǳ/��ؐf�)�G��
9�5�E�?����sU�H|Ե�8Bd���	������8i���[��2k"{丑n(��	R�;�6��"�v]��h֯����R��j�ߩ�M�49*a��A�u`#B���#��h9�!�����L&��w�ֻHqiK	R"���³��G�b��b*']M'�S*2njF�P���3��bd�A]B�fi��	�A4�3^x��@��q:|�mr��я֡��ܖ	�aם=�.*���R~Ł� 0KT�'jk~8� ����8�֞�^iB�5���HҌF7Kz��h������Wؠ9�]�K����#�ܭ��Aj���4pr	�����rew��ױSbFT>A�(�[��[Yv��� ��S��[��6$�"p���"H��T!��o��C�S����pi]ъ�G5�i�J���(�� U}nwb@�z���@&v �]��U6���7�K��_]�$�Oe{���ǻ�5�ƞÕ�'���M}K��י6��t��C�x���U����vꖆ��8�ݛEU�;�w��pK����	��pCӠ�{4���ɰ���=�Pdtڠ$��m��1��]��ʢt3��������x��抖'�� � �j;@~@��`s�)bs~�$�sFǹ2�\Iࢴ����!>`(9. ���jo�� !djH0du�g-z���q�Dgc{�`WX�6s�#����m��8�B;�!$y[��.�4����ءl����5��8�=��ЧMC���fL��@k�;����+:P0=�ޖ����΅��n^�k�|���aԬ�T&:4Dc&G�3�,��FU
������F��e�(|�8Ř�^E���v��ky������?�a"�qQ3�Ed�ev�y$��\��m���r����'�~�pfOs*rS��bA�(���EU=WKST]�B���8�@TTCdll����ôrT$.t7tȲx�����܈�ZƋ��<������(3��]�A�K[J���E#c��DC@<��)l���.�<����`W�`Tv���Q�j\ �*=Xm�1���9s99`�n��� �4�p`�v9��h��R��r�R��e1BH�C�m�l�W�|h�P���x�(���bǻ�5	���L����{7Ҋ�>
&yF1���n&�	�~[�"����p�+SΕ.7������c�e]=�T�Rbs,LLG��-� $F#�&�AX<�\y[:ؾe�9,�� �b`aK�F'��W��q���N�� �>١\�j�pV�gN�� ��C��ɰ�4���^�y ���l��H��H�E�5=rH~��ٿ4�� ��XG٘��<k �GN��8H�p/��&UWL�*p��9�]0ir�hAg%li���uww.q�I����`z��-�.xQ�v��9��z$>�������8����Ȥ��cO���T���E�pe&�+�L"bb�Cv�A�*FF�[�Vk�9�>P9�s��'N0�`����P*'���ؚ�d)ɤ� A�oKqu���\�r�$pq6��8��O��O\�q���_�A����`az��Ŀ`09laK�� ��� �m�k�2�̎��m��s��CX2���WV@b0%lH�i���P�fSb���������:E�5=�}�r�mH�� ͦ�U���@��1��P�W��uf�L�'QQ��boE���/�\ӝ�z_�{�Q��bx)>_c���@����E��+�L�]�A
K[JD���E�V���w�!�\��o+��*F�Q��J�H��ҍ���A���ڎ}~�C���@r�� 0����, hj��l9���H�v�=�i��R��X�>OB(�?�������VĻ)��Y�<�;3���nv��d�62�p�x & �#�seʹ�����$>�O�P��ɿ ���v�(���B�QT�#��?�)�.n!7�T�����DE5DF�*o�Qb�Y�m����
�"��k�Q���zv�����@���7��b ����+ �5��۾|�/SgaK�� ��T�W0��'^���aM�-^�%�a�t#�	��:aV�Ci�R�N2���WV@b0EED#���9/\�𨽸�j(��58O�c�� �>gXQ}M��b_��*"�r��FEe��M������������z;B��)a��yՊ�{0�A��?;�Q�'�;7PEk `mq�$(p��/��>������U��A��N�	� _��.��=���7P�̐�-0�W_������M<�}U�@FX���X%���l�w�����r��a��i�������Oݐk�{A��ߖ,����:���2�\I����Y���G ��8�?��wsU�H|\-MQuqq4QQ���n�:��Q����\�&&���x�����w�����Y���U���[��1l��X��T�h�$� �pCU��H�:;|Y&��Y㏆������65����-� $:�������HE@�sC���7�"�� ���+ؖ�����K��-�`�*}���%�`��"����Z��*�Ӿi��x7�F����-cy_�����Ϝ��}��ٚ�J!`s:;4��'A�[�1���f/H�W*S`��8A�oKe�y��^ۑ�3��ln�/�������� P9G���}E\`U��� iV�8W��+	\L��X' ��  ��DX'�����H���p����ΨpY��X�LjRa����w���E�BP�W��-	
C���z}�B�d(��+���s�tV���@{[v���XEI_���Wt@ޖ��L}�0���t��0��������O�xQ���9��z$>�������x<?q�����Ȉ�w�ڽ�� b����`�ީhw]�+3%^�d��G ��OHa1��0�!;K����*F6��ތ7��e�L�Х� ���GeB*�3F}���%e@N�I����̓�8,+	l�W�@L'&;��`��g�)�5��
��D`J��b��C�8p�u8�,%Y'��m�#g��R� F�q�L9W82���x4�mہi�ٶ���O��M�x7^=�N ��h�+�9��1ܭ�% JC� � �cfaK�ؖ���0���8 ���KZ<�\�韲`���s+�&`s:�j	 tBy8[�aY)�����i�u�ދ]������L�4 ��A~��ٿ4.4wY�l v�&a����.\��z��m�Y b{�z������U���z_���N�&M�g���^i-$�s)>_c��io^�0=�ޖ:+m�Ř��q���sU�H|�P^m3i���[�_4��s�"*�!2���r��2�Z`�=��ą���L��+�Ljw0���n��b*'#�W󖈪e� ��-%"���b3���Qp�R�KE���T�! ���D�	[lF@� �VU/0*�W%r
�M�d����p5�&"���O�`8��H��Sm���1)-�mLˏGB(���/H�A<�k?l�X¡��6����(N�(Jj���ٱ<�^g�1� N���R�����\�r�$pq6��8��o�t�w.����vg��&w�b ��7���OxQ�յ��(�����1GQU���苔�l�V�ø�������,�B�v8����BTTCd�݇��V�7e�~%y[�;����E�����:yc�ѵ`����򶴴d����$��Z�RXL�$``O��Yq$��@4�3 � �T*��8+P9Q�j9�&"f6�[`Ɲ�#ژ�h ���P�PD|6MfĻ�5�-a�u��!���c��<A�oK����ǹ2�\I�bp�xK��y<�R+X�0+ޖ�wxx�����![�Ļ�?���=7�K��_���^+I�����V����F/��{�p�{t�J�o�>8!�(���8Ғ��Ξ�9&)Ggm]���IST]�B��lx�ޗ����.Y��q�Ն����S&��͹��Vo3�x��%�N�N���et�� �)��S6ji�_ I�_~7�H�w{�`2�>�0L�����2�?dg1���nQ	���md�>���w�i{A������j@���p��FA�g�]�T���m3%Z*��(���g�\dT^�J3��-�ݞ߃�0������r�6�4%� �#!�\-r��6[N$� K�M�û�5�s�`B�gt`���(JjEj$@H+���'��m)�����<?q�ǹ2�\I��l�q�_N����Km��Cc���{I-��	W/a� ����
l���}�S�*s�7--��x���[M�-�� �*���&ohi�y[:tu�A`ۗ��e�*f�`,��r�_�_tvtd�X�;�^'�j�� #h�8[�aY��� ��>uu���K���� R���Z)���<� iO�c��LDm��67��r�U�� T��  �9����$iv��o�Q��Ob� .D�A0��Y��_p��􂠷#d�V��4q�O��&C�ހ�}N��pε���w��ɓ��z���$�P.�v�+1m<?�0!����ͥ[ttVB^���Gu�t.L�ho����Ғ	[��}U�@��b6����yb�k��O� �      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon_big.png-a1428ea629073186a30a1428ea3abe23.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/icon_big.png"
dest_files=[ "res://.import/icon_big.png-a1428ea629073186a30a1428ea3abe23.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST   {            :   WEBPRIFF.   WEBPVP8L"   /�0��;D�pEm1�qC,��D�?�$/��          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/stick_wood.png-8114efc57ee6abe1caf8e010abe43884.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/stick_wood.png"
dest_files=[ "res://.import/stick_wood.png-8114efc57ee6abe1caf8e010abe43884.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          �  `FFTMmYK  (�   GDEF � $  (�   (OS/2�%�R  h   Vcmap��,�  �  bcvt  "�      gasp��   (�   glyf�zEO     8head8!!   �   6hhea�  $   $hmtx�b  �   �loca	xP  $   �maxp � e  H    namen�گ  %P  �postФ��  '  �      �@�_<�      ��n�    ��n�  ��@�             ���  �    @                    y 4 	            @ .     ��  ��   ���  � 3	   	      �            2ttf @  0  �   � �         v "    U  �   � @         � � @     @   �                       � @                                                               �   @     @                                                     @ � @     �         �   @                                             \       @       ~ � 
 �0 ��     �   �0 �������l���x                                            	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`a                                   dei    k  j       g            c        b                w                                       "�   * * * * @ X � � �&6Rn�����B`���"Tv�� Fd���L|��� Df��� *X|��2X���		H	`	�	�	�	�	�

0
\
�
�
�(Jt���.T|���6b���"Fddz��
BZ��������������  "  2�   .� /<� �2��<� �2 � /<� �2��<� �23!'3#"�����V"f   �   ��    353'=3�@@@@@�@@@@@@@@@@   @  �    =3#=3�@�@ @@@@@@@@@@@@       @�  #  35##5#53=#53533533#3#'=#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@        @� # '  35+5;5#5#535353;+33#5#3#5#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@       @�       #  !=3!=3=353=3=3=3 @��@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@     @�  	 ! ' -  !53'3+53#=+#=35;=33#'#=37+5; @�@@@�@@@@@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@�@@@@@    �  ��   =3�@ @@@@@@    �   �     353'#=353�@@@@@@@@@@@@@@@@@ @@   @   ��     353=3#53@@@@@@@@@@@@@@@@@@@@@       @@�     7=##5353=333#5#753!#53�@@@@@@@@@@@� @@@@@@@@@@@@@@@@@�@@@       @@�   7=+5;=3;+�@@@@@@@@@@@@@@@@@@@@   @�� � �  	  53=3@@@@@@@@@@@    �@    3+5; @@@@@@@@@ @@     �   � �   3=3�@@@@@       @�  	     1=3=3=3=3=3@@@@@@@@@�@@@@@@@@@@@@@     @�  ' /  73+5;=####=33535353+5;�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @�   %3+5;=#5353 @@@@@@@@@@@@@@@@@@@@@@@@@@      @�      '  533+53533'53=3=3'+5;@�@@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@@�@      @�      ! )  533+5;=3!#537+5;1=3'+5;@�@@@@@�@� @@�@@@@@@@@@@@@@@@� @@@@@@@@@@@@@�@     @�    !=+=3;=3=3 @@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@       @�    )  73+5;=3!#537+=;+;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@      @�    '  73+5;=3!#=3;+3+53�@@@@@�@� @@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@        @�     3=3=3=+5;�@@@@@@@@@@@@@@@@@�@@@@@@@@@        @�     ! ' /  73+5;=3!#=37+5;1=3!#=37+5;�@@@@@�@� @@�@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�    # +  73+5;=+5;=3!#535#=37+5;�@@@@@�@@@@@@@� @@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@     �   ��    3=3=3�@@@@@@@ @@@@    @�� ��  	   53=3=3@@@@@@@@@@@@@� @@@@      @@�       %3+51+5;+5373+573+5 @@@@@@@�@@@@@@�@@@�@@@@@@@@@@       �@@    %3+5;73+5; @@@@@@@@@@@@@@@@@@@�@@�@@     @@�       73+573+5353'+5;+5;@@@@�@@@�@@@@@@�@@@@�@@@@@@@@@@     @�        353'53'5353=3'+5;�@@@�@�@@@@@@@@@@@�@@�@@�@@@@@@@�@        @�   ' -  73+53+=33#5#=35+5;3'=#�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�  '  !=+#=3;=3+5; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@        @� 	 -  73=+3+=;3#=+;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      @�     #  533+5;53!#=3+5; @�@@@@@�@� @@�@@@@@@@@@� @@@@@@@@@@@@@ @       @�  '  73=+3+=;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @� %  %3+=;+;+; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�   1=;+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�    # +  533+5;=+5;!#=3+5; @�@@@@@�@@@@@� @@�@@@@@@@@@� @@@@@@@@@@@@@@@@@ @     @� #  !=+#=3;=3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      @�   %3+5;=+5;+ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�     73+5;=3!#=3�@@@@@�@� @@@@@@@@@@@@@@@@@@@@      @�   ! % )  !53!=3333#5#5#53=3=3 @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@      @�   %3+=3; @@@@@@@@@@@@@@@@@@@@@@@@     @�  '  !=##535353!=33# @@@@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @�  '  !=#53=3!=333#5# @@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�    '  73+5;=3!#=3+5;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @       @� !  1=;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ��@�   # +  #5+5;3'=3!#=3+5; @@@@@@@@@� @@�@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@ @     @�  )  !=3!=;3#=+;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�      # +  533+5;=3!#537+5;+=37+5; @�@@@@@�@� @@�@@@@@@�@@�@@@@@@@@@� @@@@@@@@@@@@@@        @�   3=+5;+�@@@@@@@@@@@@@@@@@@@@@@@      @�   #  73+5;=3!#=3�@@@@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�  	   #  353=3+=37=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�  # '  !5#53=3!=33#7#53 @@@��@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@    	    @�        % +  !=3!=37#53537#53153+5;=3!#=3 @��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@@@@@@@      @� 	      3=353+5;=3!#=3�@@�@@�@� @@@@@@@@@@ @@@@@@@@@@     @�     '  %3+=3;'53=3=3=+5; @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     �   �   3#=;#3�@@@@@@@@@@@@@@@@@@@       @�  	     !=3'#53+53+53+=3 @@@@@@@@@@@@@@@@@�@@@@@@  @   ��   3#53=#5;�@@@@@@@@@@@@@@@@@@@      @�       53!537#53537#53 @��@�@@�@@@@ @@@@@@@@@@@        @ @   %3+5; @@@@@@@@@@@@  @@ ��    53'#53�@@@@@@@@@      @@    !+5#=35;'3=+3 @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@     @�  #  73=+3+=3;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      @@       %533+5;53!#=37+5; @�@@@@@�@� @@�@@@@@@�@@�@@@@@@@@@�@      @�  #  !+5#=35;=3'3=+3 @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @@   !  73+53+=3;53+7+5;�@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@�@        @�     3=#53=3;+53'+5;@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@    ��@@   )  3+5;5+5#=35;'3=+3�@@@@@�@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@     @� 	   !=3!=3;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�    533+5;=#5;�@@@@@@@@@@@@@�@@��@@@@@@@@@@     ��@�      533+5;=#5;!#53 @�@@@@@�@@@� @@�@@�@@@@@@@@@@@@@@@@       @�    #  !53!=3;3#5+753=3 @��@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@     @�    %3+53+=#5; @@@@@@@@@@@@@@@@@@@@@@@@      @@ 	 #  !=3#=##=;# @�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @@ 	   !=3!=;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@       @@      73+5;=3!#=37+5;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@�@      ��@@ #  =;3#=+;+@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@      ��@@  #  =+5#=35;'3=+3 @@@@@@@@@�@@@@@�@@@@@@@@@@@@@@�@@@@@@      @@     1=33#753'+5;@@@�@@@@@@@@@@@@@@@@�@@@@      @@ 	    #  73+5;53'+5;+5373+5;�@@@@@@@�@@@@@@@@�@@�@@@@@@@@@@@@@@@@@@       @�    %3+53+=#53=3;+ @@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@    !+5;=3%#=3 @@@@@@@� @@@@@@@@@@@@@@@@@@@@        @@       353=3+5;=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@     @@     !  353#537=3+=3#=3�@�@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@    	    @@         #  !53!537#53537#53153+5;53!#53 @��@�@@�@@@@@�@@�@� @@@@@@@@@@@@@@@@@@@    ��@@   %  3+5;5+5;=3%#=3�@@@@@�@@@@@@@� @@@@@@@@@@@@@@@@@�@@@@@@@        @@     %3+53533'53=+5;# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @   �  	     353'#=3'#531=3=3�@@@@@@@@@@@@@@@@@@@@@�@@   �   ��   3=3�@@@@@@@@@@@@@@@  @   �  	     353=3=3'#=3'#53@@@@@@@@@@@@@@@@@�@@@@@@@@     �@@  	    =373+5353+53@�@@@�@�@@�@@@@@@@@     �   ��    3=353�@@@@@@@@@@@@@�@@     @�   '  35#5#=3535333#5#3#753#=#�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@�@@@@@@@@      @�   %  533+53=#53=3;+3+5; @@@@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@      @@�        %53!537+=;#5#753!#53 @��@�@@@@@@@@�@� @@@@@@@@@@@@@@@�@@@      @�   # ' +  35+5;5+5;53;+;+53+5;53!#53�@@@@@@@@@@@@@@@@@@�@@�@� @@@@@@@@@@@@@@@@@@@  �   ��    3=3=3�@@@@@@@@@ @@@@@@       @� 	     % ) 3  73+5;53'+5;153!#5;+5;+5373+5;�@@@@@@@�@@@@@@@@@� @@�@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@    @� �    53#53�@�@�@@@@       @�  # ' /  3+5#=35;3#'5#=#375#75#5#3�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@       @�  	  ! '  533+5353+5#535#53533#3#+5; @�@@@�@�@@@@@@@@@@�@@@@@@@� @@@@@@@@@@@@@ @       �                  B        Y        �        �        �         	       	   0  	   K  	  0 `  	   �  	    �  	   � V i n i c i u s M e n e z i o  ViniciusMenezio  m o n o g r a m  monogram  M e d i u m  Medium  V i n i c i u s M e n e z i o : m o n o g r a m  ViniciusMenezio:monogram  m o n o g r a m  monogram  V e r s i o n   0 0 1 . 0 0 0    Version 001.000   m o n o g r a m  monogram          �� 3                     y           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � � � � � � � �	
uni00A0uni2000uni2001uni2002uni2003uni2004uni2005uni2006uni2007uni2008uni2009uni200AEurouni3000      ��                 x                    ����    �x+A    ��n�            RSRC                    AudioStreamSample                                                                 
      resource_local_to_scene    resource_name    data    format 
   loop_mode    loop_begin 	   loop_end 	   mix_rate    stereo    script        
   local://1          AudioStreamSample          �y  ����������                      �������������������������                   �������������������������                  �������������������������                         �����                    ������������������������    ������������������������   �������������������������  ��������������������������   ��������������������������  ���������������������������  ���������������������������   ���������������������������      ��������������������  ��������������������������  �������������������������� 	

		���������������������������	
	��������������������������� 	

 ��������������������������� 	

		 ����������������������������				 ���������������������������       ����������������  ������������������������� ���������������������������������������������������������������������������			������������������������ 

	������������������������ 
		������������������������

		 ����������������������� 	

	 �����������������������
	�����������������������

�����������������������	 ����������������������
 �������������������������������������������� 
!!	 ���������������������  "## ����������������������	 "$&%"	 ���������������������	!#%''$	���������������������� #%'('!���������������������
!#&((&"���������������������
"$'('%!���������������������!#&('%" ��������������������!#&('$!��������������������
!$''&# ��������������������"%'&$! ��������������������!$''%!��������������������  #&'%"��������������������	#&'&# 
��������������������"&('$!�������������������� "%((&#  ��������������������!%()($!	��������������������	!%(**'# �������������������� $(+,*'# ���������������������
#&*-.+($!�������������������� $(,/0.*&#	��������������������!%)-021-)& ��������������������!&)-1442.)#	��������������������� $(,036740) ��������������������� !%)-147983)����������������������!%)-147:<7."���������������������$(,037:<<7,! ���������������������#'+/369:94-$	����������������������
 $(,036862.)"����������������������	#'+/2552.*&#�����������������������
#'+/22/+'$" �����������������������!%),.-*&# ������������������������ $(**'$ 
������������������������ $&&#������������������������	 ! 	�������������������������

	�������������������������
	 �������������������������
		 ������������������������� ����������������������            ��������������������������������������������

	��������������������������

		���������������������������

		���������������������������

	���������������������������

		���������������������������

	��������������������������� 
	 ��������������������������� 
	����������������������������  	���������������������������� !	 ���������������������������!	 ��������������������������� 
	���������������������������

	���������������������������
		����������������������������


	���������������������������

	���������������������������
		���������������������������
		���������������������������

	�������������������������� ����������������������                ���������� ��������������������������������������������������	

		�������������������������	

		�������������������������

		������������������������
������������������������	 " ����������������������� $%#  �����������������������
"&((%!�����������������������	!%)++'$!�����������������������
"&*-.+'$"  ����������������������  $(,/0.*&$" �����������������������
#'+.11.*'$" �����������������������
#'+/231,(&#!����������������������  $(,/342.*'%!	����������������������!&)-1452.*'$ �����������������������
#'+/2551,)&#
����������������������!%)-0453/+(%  ����������������������
#'+/2551-)&#���������������������� !%)-0353/*'%! ����������������������"&*.1440,(%#�����������������������
#'+.231-)&$"�����������������������	"&*.12/+'$" �����������������������!%),/0,(%" �����������������������	"&)--+'#!�����������������������!%(+*'# ������������������������"&('# ������������������������	!$$"	������������������������
  	�������������������������

	�������������������������


	�������������������������		�������������������������         ���������       ������������������������� �������������������������� 

		���������������������������

			���������������������������
��������������������������� !" ����������������������������
 #&&# �����������������������������	"%(*)%" �����������������������������	"%'),,*'#!
����������������������������� 	"$')+-/-*&#! �����������������������������
"%')+-/0.+'$"  ������������������������������ #%(*,./11.*'$" 
 ������������������������������ "%')+-/022.*'%# ������������������������������ 	 #%'*+-/1231-)&$ ������������������������������� "%')+-/02330,(%!�������������������������������!$&(*,./1233/+($
�������������������������������"$&)+,.01342/+'#	�������������������������������� "%')+-.01342.*'"������������������������������� 	 #%')+-/02331-)&!�������������������������������!$&(*,./1232.*'$
 ������������������������������ 	 #%')+-/0231-)&$ ������������������������������� #%')+-/022/*'%"������������������������������ 	!#&(*,.011.*&$" 
������������������������������� #%(*,.00.*&$" 
������������������������������ 	!$&)+-//,($" ����������������������������� 	!$&)+--*&#!����������������������������� #&(*+)&" 	�����������������������������!$&))%" ����������������������������!$&&#�����������������������������	 ## 
����������������������������
 
	����������������������������


	��������������������������� 
		���������������������������

	�������������������������� 
		 ��������������������������
	��������������������������   ������������������  �           �                   ��                  �������������������������  ��������������������������������������������������  ��������������������������������������������������  ������������������������� �����������������������     ��������������           ����������������������        ����������������������������������������������������		��������������������������

			���������������������������


		���������������������������

��������������������������� !  ��������������������������� !$&$!
���������������������������� 
 #%(*($! ���������������������������� 	"%')+-+($" 	������������������������������!#&(*,.0.+'%#!������������������������������"$&)+-.011.*'%# �������������������������������"$')+,.01342/+'"	��������������������������������!$&(*,-/023453-%��������������������������������
 "%'(*,./013453,#�������������������������������� !#%'(*,-/01231-)$��������������������������������� 	 #%'(*+-./11/,(%# ����������������������������������	 "$&()+,-/0/+'$" 
����������������������������������	"$%')*+-..+'$" �����������������������������������	!#%'(*+,-*&#!
 �����������������������������������	!#%&()+,*&#!�����������������������������������  "$%')**(%" 	������������������������������������ "$%'(*)&# 
 �����������������������������������  "#%'())%" ������������������������������������
!#%&())&# ������������������������������������	!#$&'))'$!������������������������������������
!#$&()*(%" ����������������������������������� "$%'(*+)%" ����������������������������������� "$&')*++(%" 
 ����������������������������������� "$%'(*+,,)&#!
����������������������������������	!#%&()+,--+($" ����������������������������������	 "#%'(*+,./.+'%#! ���������������������������������	 "$%')*,-./0/+'%"���������������������������������	 "$&')+,-/011/+'"
 ��������������������������������  "$&')+,-/0122/( 	 ��������������������������������
!#%')*,-/01230) 	 �������������������������������  "%'(*,-.0121.)#
�������������������������������	!#%')+,./01/+'%�������������������������������	!$&(*+-.00-)&$!
������������������������������ !#&()+-./-)&#!
������������������������������
 "$'(*,..+'$" ������������������������������
 "$'(*,-+'$" ������������������������������!#%')+,*&#! ������������������������������
 #%')+,)%" 	������������������������������
 #%')++'$! 	������������������������������!#%')+*&#!������������������������������!#%')++'$! ������������������������������!#%')+,)%"!������������������������������ "$'(*,,)%#! ������������������������������!#%')*,-+'$"!������������������������������� "$&(*+-.-)&$" 	������������������������������  "$&()+,./.+'%"
�������������������������������	 "$&')+,-.//,(#��������������������������������
 "$&')*+-./00,#���������������������������������
 "#%'()+,-./.+&	���������������������������������
 "$%'(*+,--*&#"	 ����������������������������������
 "#%&()*+*'#!
�����������������������������������	 "#%&'((%"������������������������������������!"$%&%!������������������������������������� !#" 
��������������������������������������	 
		�������������������������������������� 

	 ���������������������������������������	
		����������������������������������������
		 ���������������������������������������� 	

	����������������������������������������� 

		���������������������������������������   	 �����������������������������������           �������������������������������                   �������������������������������                  �����������������������������������         ��������������������������������������     ����������������������������������������� ������������������������������������������	�����������������������������������������	
			���������������������������������������� 	
		����������������������������������������	

		��������������������������������������� 	

		���������������������������������������

		�������������������������������������� 	

		��������������������������������������

		�������������������������������������

	������������������������������������ 	 
������������������������������������	 ! ����������������������������������� 	 !!������������������������������������
!""	����������������������������������� 	 !"!������������������������������������
!""�����������������������������������  !!  �����������������������������������   	������������������������������������		�������������������������������������

	������������������������������������� 

		���������������������������������������

		 ���������������������������������������	
		 ����������������������������������������	
		 ����������������������������������������� 	
			����������������������������������                      ��������������������            ������������������������������������ ���  � ��������������������������������������������
	����������������������������������������������	
		�����������������������������������������������	

		������������������������������������������������ 


		��������������������������������������������������


		���������������������������������������������������	

		 ���������������������������������������������������	
		 ��������������������������������������������������� 	

		 ��������������������������������������������������� 


	����������������������������������������������������	
		����������������������������������������������������	

	 ���������������������������������������������������	


	 ��������������������������������������������������	

		��������������������������������������������������

		 �������������������������������������������������	

		 ������������������������������������������������	

		����������������������������������������������� 


	 ��������������������������������������������� 	

	 �������������������������������������������    ��������������������������������������               ����������������������������������                            �������������������������������                               ��������������������������������                ����������������������������������          ����������������������������������������     �������������������������������������������������������������������������������������������

		���������������������������������������������� 	

		 ����������������������������������������������� 	


		 �������������������������������������������������	

		 �������������������������������������������������� 	


		 �����������������������������������������������������	


	������������������������������������������������������� 	

		 ���������������������������������������������������������	


����������������������������������������������������������� 	


������������������������������������������������������������� 		

 ���������������������������������������������������������������		

 ���������������������������������������������������������������� 	


 ����������������������������������������������������������������� 	

	 ���������������������������������������������������������������� 	


 �����������������������������������������������������������������		

 ���������������������������������������������������������������� 		

	 �������������������������������������������������������������� 	


 ��������������������������������������������������������������	


 ������������������������������������������������������������ 		


	����������������������������������������������������������� 		


		 ���������������������������������������������������������� 	



	 �������������������������������������������������������� 	



		�������������������������������������������������������� 	



		 ��������������������������������������������������������		


	 ������������������������������������������������������� 		


		 ������������������������������������������������������� 		


	 ���������������������������������������������������������	


		���������������������������������������������������������� 		

		������������������������������������������������������������ 		


	 �������������������������������������������������������������� 		


	 ����������������������������������������������������������������� 		



 ��������������������������������������������������������������������� 			




	 ������������������������������������������������������������������������� 				




		 ����������������������������������������������������������������������������  				






		  ������������������������������������������������������������������������������� 					








		 ���������������������������������������������������������������������������������� 						












		 ������������������������������������������������������������������������������������ 								












		  ����������������������������������������������������������������������������������� 									









	 ����������������������������������������������������������������������������������� 										








		 ���������������������������������������������������������������������������������  										









	 �������������������������������������������������������������������������������  										












	  ����������������������������������������������������������������������������� 										














		 ���������������������������������������������������������������������������  									

















		 �������������������������������������������������������������������������� 									


















		 ������������������������������������������������������������������������  								



















		  �����������������������������������������������������������������������  									

















		  ������������������������������������������������������������������������ 											













	  �������������������������������������������������������������������������� 																			
	 ����������������������������������������������������������������������������� 													  ���������������������������������������������������������������������������������   ��������������������������������������������������������������������������������������             ����������������������������������������������������������������������������������                                    ����������������������������������������������������������������������������                                                              ������������������������������������������������������������������������                                                                                      ��������������������������������������������������������������������                                                                                                        �������������������������������������������������������������������                                                                                                                 ���������������������������������������������������������������������                                                                                                             �����������������������������������������������������������������������������                                                                                              ������������������������������������������������������������������������������������                                                                           ���������������������������������������������������������������������������������   �� ������������   ������������������������������������������������������������������������������������������                   ���������������������������������������������������������������������������������������                ���������������������������������������������������������������������������������������                  ����������������������������������������������������������������������������������������                      ������������������������������������������������������������������������������������                                      �������������������������������������������������������������������������������                                                            �������������������������������������������������������������������������                                                                                             ����������������������������������������������������������������                                                                                                                                      ������������������������������������������������������                                                                                                                                                                                        ��������������������������������������������                                                                                    �����������������������������                                                                                                ��������������������������������                                                                                                �������������������������������������������                                                                                           ����������������������                                                                                                          ������������������������������������������                                                                                           ����������������������������                                                                                                    �������������������������������                                                                                               ����������������������������������������������                                                                                                                                                                                                     ��������������������������������������������������������� �                                                                                                                                                                               ��������������������������������������������������������������                                                                                                                                                                       �����������������������������������������������������������                                                                                                                                                                             ����������������������������������������������������                                                                                                                                                                                              ����������������������������������������                                                                                        �������������������������������������������                                                                                             ������                                                                                                                          ������������������������������������������������������������������                                                                                                                                                                                                                                     ��������������������������������������������������������������������������������������                                                                                                                             RSRC   [remap]

importer="wav"
type="AudioStreamSample"
path="res://.import/crash.wav-c79de48f41db20554c8d2497fdc19c09.sample"

[deps]

source_file="res://sounds/crash.wav"
dest_files=[ "res://.import/crash.wav-c79de48f41db20554c8d2497fdc19c09.sample" ]

[params]

force/8_bit=false
force/mono=false
force/max_rate=false
force/max_rate_hz=44100
edit/trim=false
edit/normalize=false
edit/loop=false
compress/mode=0
         RSRC                    AudioStreamSample                                                                 
      resource_local_to_scene    resource_name    data    format 
   loop_mode    loop_begin 	   loop_end 	   mix_rate    stereo    script        
   local://1          AudioStreamSample          k�  �����                                                ��������������������������������������������������������������������������������������                �������������������������������������������������������������������������������         ������������������������������������������������������������������������������ 	




			      �������������������������������������������������������������������������������	

			     ������������������������������������������������������������������������������

			    ������������������������������������������������������������������������������ 	

		   �������������������������������������������������������������������������������	

		   ������������������������������������������������������������������������������	

		  ������������������������������������������������������������������������������ 	! 
		   ������������������������������������������������������������������������������	!$$#! 
		  ������������������������������������������������������������������������������#''&%$#"! 

	  ������������������������������������������������������������������������������%*+*)(&%$#" 
		 ������������������������������������������������������������������������������  &,/.-+*)'&%#"! 

	 �������������������������������������������������������������������������������!(.320/-,+)('%$#! 

	  ������������������������������������������������������������������������������")0664310.-+*('%$#! 
	 ������������������������������������������������������������������������������
")18:865320.-+*('%$#! 
	 ������������������������������������������������������������������������������
#+3;><:875310.-+)(&%$"!
	 ������������������������������������������������������������������������������ 	$-5=B@><:86531/.,+)'&$#! 
	 �������������������������������������������������������������������������������	%.7@ECA?=;:86421/-+*('%#"!
	  ������������������������������������������������������������������������������&/9BIGECA?=;975310.,+)'&$"!
	 ������������������������������������������������������������������������������&0:DLKIGDB@><:86420/-+)(&$#! 
	 ������������������������������������������������������������������������������'1<FOOMJHFDA?=;97531/-,*(&%#! 
	 ������������������������������������������������������������������������������'2=HRSPNLIGEB@><:86420.,*(&%#! 
 ������������������������������������������������������������������������������'3>JUWTROMJHECA?<:86420.,*('%#! 
	 ������������������������������������������������������������������������������)5@LWYVTQOLJGEB@><97531/-+)'%$" 
	 ������������������������������������������������������������������������������)4@LWYVSQNLIGEB@>;97531/-+)'%#" 
	 ������������������������������������������������������������������������������(4@KVYVSQNLIGDB@=;97531/-+)'%#" 
	 ������������������������������������������������������������������������������(4@KVXVSPNKIFDB?=;97531/-+)'%#! 
	 ������������������������������������������������������������������������������(4?KVXUSPNKIFDB?=;97420.,*)'%#! 
	 ������������������������������������������������������������������������������(4?KVXURPMKHFDA?=;86420.,*('%#! 
	 ������������������������������������������������������������������������������(4?JUWURPMKHFCA?=:86420.,*('%#!
	 ������������������������������������������������������������������������������(3?JUWUROMJHFCA?<:86420.,*(&%#!
	 ������������������������������������������������������������������������������(3?JUWTROMJHECA?<:86420.,*(&$#!
	 ������������������������������������������������������������������������������(3>JUWTQOLJHECA><:86420.,*(&$#!
	 ������������������������������������������������������������������������������(4?JUVTQNLJGEB@><:7531/-+*(&$"!
	 ������������������������������������������������������������������������������)5@KUVSPNKIGDB@=;97531/-+)'&$" 
 ������������������������������������������������������������������������������+6ALVURPMKHFDA?=;97520/-+)'%#" 
 ������������������������������������������������������������������������������	!,7CNVTROMJHFCA?=:86420.,*('%#! 	 ������������������������������������������������������������������������������
"-9DOVTQOLJGEC@><:86420.,*(&%#!	 ����������������������������������������������������������������������������� #/:EPVSQNLIGEB@><97531/-+*(&$"!
	������������������������������������������������������������������������������%0;FQUSPNKIFDB@=;97531/-+)'&$" 
	 ������������������������������������������������������������������������������&1<GRURPMKHFDA?=;96420.-+)'%$" 
	 ������������������������������������������������������������������������������'2=HSTQOMJHECA?<:86420.,*('%#! 
 ������������������������������������������������������������������������������(4?ISSQNLJGEC@><:86420.,*(&%#!
 ������������������������������������������������������������������������������*5@KTSPNKIGDB@>;97531/-+*(&$#!	 ������������������������������������������������������������������������������	 +6ALTRPMKHFDB?=;97531/-+)'&$"!
	 ������������������������������������������������������������������������������
!,7BMTROMJHFCA?=;86420.-+)'%$" 
	 �����������������������������������������������������������������������������$/:EOSQNLIGEB@><:86420.,*(&%#! 
	 ������������������������������������������������������������������������������&2<GQRPMKIFDB?=;97531/-+)(&$"!	 ������������������������������������������������������������������������������)4?IRQOMJHECA?=:86420.-+)'%$" 
	 ������������������������������������������������������������������������������
!,7ALSQNLIGEB@><:86420.,*('%#! 
	������������������������������������������������������������������������������#.9DNRPMKHFDB?=;97531/-+*(&$#!
 ������������������������������������������������������������������������������&1<FPQOLJHECA?=:86420.-+)'%$" 	 ����������������������������������������������������������������������� $0;FPPMKHFDA?=;96420.,+)'%#" 
 �������������������������������������������������������������������������� ,7BMQNLIGEB@><97531/-+*(&$"!
	 ��������������������������������������������������������������������������'3>IQOLJHECA><:86420.,*(&%#! 	 ��������������������������������������������������������������������������#.9DOPMKHFDA?=;97420/-+)'%$" 
	 ��������������������������������������������������������������������������*5@KPNKIGDB@=;97531/-+)(&$"!
	 �������������������������������������������������������������������������%1<GONLJGEC@><:86420.,*(&%#!
 ��������������������������������������������������������������������������
!,7BMOMJHFCA?=:86420.,+)'%#" 
	 ��������������������������������������������������������������������������(3>IOMKIFDB?=;97531/-+)'&$"!
	 �������������������������������������������������������������������������$/:ENNLIGDB@><:7531/.,*(&$#!
 ��������������������������������������������������������������������������*6@KOLJGECA><:86420.,*('%#" 
	 ��������������������������������������������������������������������������(3>HOMJHECA?=:86420.,+)'%$" 
	 �������������������������������������������������������������������������%0;ENMJHFCA?=;97531/-+)'&$" 	 ��������������������������������������������������������������������������"-8BLMKHFDB?=;97531/-+)(&$"!
 ��������������������������������������������������������������������������*5@JNKIFDB@>;97531/-,*(&$#!
	 ��������������������������������������������������������������������������'2=GNLIGEB@><:86420.,*(&%#! 
	 �������������������������������������������������������������������������$/:DMLJGEC@><:86420.,*)'%#" 
	 ��������������������������������������������������������������������������!,7BKLJHECA?<:86420.-+)'%$" 	 ��������������������������������������������������������������������������)4?IMJHFCA?=;97531/-+)'&$"!
 ��������������������������������������������������������������������������'1<FMKHFDA?=;97531/-+)(&$#!
	 �������������������������������������������������������������������������$/9CLKIFDB@=;97531/-,*(&%#! 
	 ��������������������������������������������������������������������������!,6AJKIGDB@><:75320.,*('%#" 	 ��������������������������������������������������������������������������)3>HLIGEB@><:86420.,*)'%#" 
 ��������������������������������������������������������������������������&1;ELJGECA><:86420.-+)'%$" 
	 �������������������������������������������������������������������������#.8CKJHECA?=:86421/-+)'&$"!
	 �������������������������������������������������������������������������� +6@IJHFCA?=;97531/-+*(&$#!
	 ��������������������������������������������������������������������������(3=GKHFDA?=;97531/-,*(&%#! 	 ��������������������������������������������������������������������������&0:DKIFDB@>;975310.,*('%#" 
	 �������������������������������������������������������������������������"-7AJIGDB@><:86420.,+)'%$" 
	 ��������������������������������������������������������������������������
*4>HIGEC@><:86420.-+)'&$"!
	 ��������������������������������������������������������������������������'1<FJGECA?<:86431/-+)(&$#!	 ��������������������������������������������������������������������������$/9CIHECA?=;97531/-+*(&%#! 
 �������������������������������������������������������������������������",6@IHFDA?=;97531/.,*(&%#" 
	 ��������������������������������������������������������������������������
)3=GHFDB?=;975320.,*('%#" 
	 ��������������������������������������������������������������������������'1;DIFDB@><:86420.,+)'%$"!
	 ��������������������������������������������������������������������������#-7AHGEC@><:86420/-+)(&$#!
	 ��������������������������������������������������������������������������
)3=FHECA?=;97531/-,*(&%#" 
	 ��������������������������������������������������������������������������%/9CHFDB?=;975320.,*)'%$" 
	 �������������������������������������������������������������������������!+5?GFDB@><:86420.-+)'&$"!
	 ��������������������������������������������������������������������������'1;DGECA><:86431/-+*(&%#! 
	 ��������������������������������������������������������������������������#-7AGECA?=;97531/.,*('%#" 	 ������������������������������������������������������������������������� )3=FFDB@=;976420.,+)'&$"!
	 ��������������������������������������������������������������������������%/9CGDB@><:86420/-+)(&$#! 
	 ��������������������������������������������������������������������������"+5?FECA?=;97531/-,*(&%#" 	 ��������������������������������������������������������������������������	(1;DFCA?=;975310.,*)'%$"!
	 ��������������������������������������������������������������������������$.7AFDB@><:86420.-+)'&$#!
	 ������������������������������������������������������������������������� *3=EDB@><:86421/-+*(&%#! 	 ��������������������������������������������������������������������������&09BECA?=;97531/.,*('%#" 
	 ��������������������������������������������������������������������������",5?ECA?=;975320.,+)'&$"!
	 ������������������������������������������������������������������������� 
(2;DDB@><:86420/-+)(&$#! 	 ��������������������������������������������������������������������������$.7ADB@><:86431/-,*(&%#" 
	 ��������������������������������������������������������������������������!*4=DCA?=;97531/.,*)'%$"!
	 ��������������������������������������������������������������������������	&09BCA?=;975420.,+)'&$#! 	 ��������������������������������������������������������������������������#,6?DB@><:86420/-+*(&%#" 
	 �������������������������������������������������������������������������)2;CB@><:86531/-,*('%$" 
	 ��������������������������������������������������������������������������%.7@CA?=;975310.,*)'&$"!
 ��������������������������������������������������������������������������!*4=CA?=;976420.-+)(&$#! 
	 ��������������������������������������������������������������������������	&/8AB@><:86431/-,*('%$" 
	 ��������������������������������������������������������������������������!*3<BA?=;975320.,+)'&$#! 
	 ��������������������������������������������������������������������������	%/8@B@><:86420/-+*(&%#" 
	 ��������������������������������������������������������������������������!*3<B@><:97531/.,*)'%$"!
	 ��������������������������������������������������������������������������	%.7@A?=;976420.-+)(&%#! 
	 �������������������������������������������������������������������������� )3;A@><:86431/-,*('%$"!
	 ��������������������������������������������������������������������������	%.7?A?=;975310.,+)'&$#! 
	 �������������������������������������������������������������������������� )2;A?=;:86420/-+*(&%#" 
	 ��������������������������������������������������������������������������$-6?@><:87531/.,*)'&$"!
	 �������������������������������������������������������������������������� )2:@?=;975420.-+)(&%#" 
 ��������������������������������������������������������������������������$-6>@><:86421/-,*('%$"!
	 �������������������������������������������������������������������������� )1:@><;975310.,+)'&$#! 	 ��������������������������������������������������������������������������#,4=?=<:86421/-+*('%$"!
	 ��������������������������������������������������������������������������&/7?><;975310.,+)'&$#! 
	 �������������������������������������������������������������������������� )2:?=<:86421/-,*('%$"!
	 ��������������������������������������������������������������������������#,5=><;975310.,+)(&$#" 
	 ��������������������������������������������������������������������������'/8>=;:86421/-,*('%$"!	 �������������������������������������������������������������������������� )2:>=;975320.-+)(&%#" 
	  ��������������������������������������������������������������������������	#,5<><:86421/-,*)'%$"! 
	 ��������������������������������������������������������������������������'/8>=;975320.-+)(&%#" 
	 ��������������������������������������������������������������������������!*2:=<:86421/-,*)'&$#! 
	 ��������������������������������������������������������������������������
$-5<=;975320.-+)(&%#" 
	 ��������������������������������������������������������������������������&.7=<:86531/.,*)'&$#! 
	 ��������������������������������������������������������������������������(09=;976420/-+*('%$"!
	  ��������������������������������������������������������������������������!*2:<:975310.,+)(&%#" 
	 ��������������������������������������������������������������������������	#,4;<:86431/.,*)'&$#! 
	 ��������������������������������������������������������������������������%.6<;975420/-+*('%$"!
	 ��������������������������������������������������������������������������'08<:865310.,+)(&%#" 
	  ��������������������������������������������������������������������������!)19;986421/-,*)'&$#! 
	 �������������������������������������������������������������������������� 	#+3:;975320.-+*('%$"!
	 ��������������������������������������������������������������������������
$,4::865310.,+)(&%#" 
	 ��������������������������������������������������������������������������%-5;:86431/.,*)'&$#" 
	 ��������������������������������������������������������������������������%-5:976420/-,*('%$#! 
	 ��������������������������������������������������������������������������&.6:975320.-+*('%$"!
	  ��������������������������������������������������������������������������'/7:865310.,+)(&%#"!
	  �������������������������������������������������������������������������� (07986421/.,*)'&$#" 
	 ���������������������������������������������������������������������������!)18975420/-,*)'&$#! 
	 ���������������������������������������������������������������������������!(08975420/-+*('%$#! 
	 ��������������������������������������������������������������������������� (07875320.-+*('%$"! 
	 ��������������������������������������������������������������������������� (07865310.-+)('%$"! 
	 ��������������������������������������������������������������������������� (07865310.,+)(&%#"!
	 ��������������������������������������������������������������������������� (/786431/.,+)(&%#"!
	 ��������������������������������������������������������������������������� (/676421/.,*)'&%#" 
	 ��������������������������������������������������������������������������� '/675420/-,*)'&$#" 
	 ���������������������������������������������������������������������������&.575420/-,*)'&$#" 
	  ��������������������������������������������������������������������������%-475420/-,*)'&$#" 
	  ��������������������������������������������������������������������������$+375420/-,*)'&$#" 
	  ��������������������������������������������������������������������������#*275420/-,*)'&$#" 
	 ��������������������������������������������������������������������������
")165420/-,*)'&$#" 
	 ��������������������������������������������������������������������������	!(/65420/-,*)'&$#" 
	 ���������������������������������������������������������������������������&-45421/-,*)'&%#"!
	 ���������������������������������������������������������������������������$+25421/.,+)(&%#"!

	  ��������������������������������������������������������������������������")05421/.,+)(&%$"! 
	 ��������������������������������������������������������������������������	 '.4431/.,+)('%$"! 
	 ���������������������������������������������������������������������������%,34310.-+*('%$#! 
	 ���������������������������������������������������������������������������#*14310.-+*('%$#! 
		  ��������������������������������������������������������������������������
 '/4320/-,*)'&$#" 
	 ���������������������������������������������������������������������������%,2420/-,*)(&%#"!
	  ��������������������������������������������������������������������������")0421/.,+)(&%$"! 
	 ��������������������������������������������������������������������������	&-3310.-+*('%$#! 
	 ���������������������������������������������������������������������������#*1320.-+*)'&$#" 
	  ��������������������������������������������������������������������������
&-320/-,*)(&%$"! 
		 ���������������������������������������������������������������������������#*031/.,+*('%$#! 
	  ��������������������������������������������������������������������������	&,220/-,*)'&%#"!
		 ���������������������������������������������������������������������������")/21/.,+)(&%$"! 
	  ��������������������������������������������������������������������������	%,110.-+*('&$#" 
	 ���������������������������������������������������������������������������!(.20/-,*)(&%$"! 
	  �������������������������������������������������������������������������� #*010.-+*('&$#" 
		  ��������������������������������������������������������������������������
%,10/-,*)(&%$"! 
	 ���������������������������������������������������������������������������!(.1/.,+*('%$#" 

	  ��������������������������������������������������������������������������#*00/-,*)'&%#"! 
	 ���������������������������������������������������������������������������
%+0/.-+*('&$#" 
	 ��������������������������������������������������������������������������� &-0/-,*)(&%$"! 

	  ���������������������������������������������������������������������������!(.0.-+*)'&%#"!
	  ��������������������������������������������������������������������������#)//.,+)('%$#! 
	 ���������������������������������������������������������������������������#*//-,*)(&%$"! 
	 ���������������������������������������������������������������������������	$*/.-+*)'&%#"! 

	 ���������������������������������������������������������������������������
$+/.,+*('&$#" 
		 ���������������������������������������������������������������������������%+.-,+)(&%$#! 
	  ���������������������������������������������������������������������������&,.-+*)'&%$"! 
	  ���������������������������������������������������������������������������%+.-+*)'&%#"! 
	  ���������������������������������������������������������������������������%+.,+*('&$#"!
	  ���������������������������������������������������������������������������%+-,+)('%$#" 
	  ���������������������������������������������������������������������������%+-,+)('%$#! 
	  ���������������������������������������������������������������������������
$*-,*)(&%$#! 
	 ���������������������������������������������������������������������������
#)-,*)(&%$#! 
	 ���������������������������������������������������������������������������	"(,,*)(&%$#! 
	 ���������������������������������������������������������������������������!',,*)(&%$#! 
	 ��������������������������������������������������������������������������� %*,*)(&%$#! 
		  ���������������������������������������������������������������������������#),*)(&%$#" 
		  ���������������������������������������������������������������������������	"'++)('%$#" 

	 ��������������������������������������������������������������������������� &++)('%$#"!

	  ���������������������������������������������������������������������������#)+*('&$#"! 
	  ���������������������������������������������������������������������������	!'+*('&%#"! 
		 ��������������������������������������������������������������������������� $)*)'&%$"! 

	  ���������������������������������������������������������������������������
"(*)(&%$#" 
	  ���������������������������������������������������������������������������$))('&$#"! 
		  ���������������������������������������������������������������������������
!'*('&%#"! 

	  ���������������������������������������������������������������������������$))(&%$#! 
		  ���������������������������������������������������������������������������	 &)('&$#"! 

	 ��������������������������������������������������������������������������� "')'&%$#! 
		  ���������������������������������������������������������������������������$(('%$#"! 
	  ���������������������������������������������������������������������������
 &('&%$"! 
		  ��������������������������������������������������������������������������� !'('%$#"! 
	  ���������������������������������������������������������������������������#''&%$#! 

	  ���������������������������������������������������������������������������$''&$#"! 
		 ����������������������������������������������������������������������������	$'&%$#"!
		 ����������������������������������������������������������������������������
$'&%$"! 
	  ����������������������������������������������������������������������������
$'&$#"! 

	  ����������������������������������������������������������������������������
 %&%$#"! 

	  ����������������������������������������������������������������������������
 $&%$#" 

	  ����������������������������������������������������������������������������
$&%$"! 
		  ����������������������������������������������������������������������������
$&$#"! 
		  ����������������������������������������������������������������������������	#%$#"! 
		  ����������������������������������������������������������������������������	"%$#"! 
		  ����������������������������������������������������������������������������!%$#"! 
		  ��������������������������������������������������������������������������� $$#"! 

	  ��������������������������������������������������������������������������� 
#$#"! 

	  ����������������������������������������������������������������������������	"$#"! 

	  ���������������������������������������������������������������������������� ##"! 
		  ��������������������������������������������������������������������������� 
"#"! 
		  ����������������������������������������������������������������������������!#"! 

	   ���������������������������������������������������������������������������"#"! 
		  ���������������������������������������������������������������������������� #"! 

	   ��������������������������������������������������������������������������� 
""! 

		  ����������������������������������������������������������������������������""! 
		  ����������������������������������������������������������������������������	 "! 

		  ����������������������������������������������������������������������������!! 
		  ����������������������������������������������������������������������������!! 
		  ����������������������������������������������������������������������������! 

	   ��������������������������������������������������������������������������� 	 ! 
		  ���������������������������������������������������������������������������� 
  
		  ����������������������������������������������������������������������������
  

		  ����������������������������������������������������������������������������  

	  ����������������������������������������������������������������������������

	  ����������������������������������������������������������������������������
		  ����������������������������������������������������������������������������
		  ����������������������������������������������������������������������������

		  ���������������������������������������������������������������������������� 	
		  ���������������������������������������������������������������������������� 	
		  �����������������������������������������������������������������������������
		   ����������������������������������������������������������������������������
		  ���������������������������������������������������������������������������� 	

		  �����������������������������������������������������������������������������

		   ����������������������������������������������������������������������������


		  �����������������������������������������������������������������������������

	   ����������������������������������������������������������������������������


		  �����������������������������������������������������������������������������
		   ���������������������������������������������������������������������������� 

		  �����������������������������������������������������������������������������

		   �����������������������������������������������������������������������������

		   ���������������������������������������������������������������������������� 
		   ���������������������������������������������������������������������������� 

		   ���������������������������������������������������������������������������� 

		  �����������������������������������������������������������������������������	

		  �����������������������������������������������������������������������������
		  �����������������������������������������������������������������������������

		  ����������������������������������������������������������������������������� 

		   ���������������������������������������������������������������������������� 

		   �����������������������������������������������������������������������������


		   �����������������������������������������������������������������������������	

		   �����������������������������������������������������������������������������

		   ����������������������������������������������������������������������������� 


		   �����������������������������������������������������������������������������	

		   ����������������������������������������������������������������������������� 


		   �����������������������������������������������������������������������������	

		   ����������������������������������������������������������������������������� 


			   �����������������������������������������������������������������������������

		   ������������������������������������������������������������������������������	

		   ����������������������������������������������������������������������������� 


		   �����������������������������������������������������������������������������


		    �����������������������������������������������������������������������������

		   ������������������������������������������������������������������������������


		   ������������������������������������������������������������������������������

			   ������������������������������������������������������������������������������

		   ������������������������������������������������������������������������������

		   ������������������������������������������������������������������������������



		    �����������������������������������������������������������������������������


			    ����������������������������������������������������������������������������� 	

			    ������������������������������������������������������������������������������

			   ������������������������������������������������������������������������������	

			    ����������������������������������������������������������������������������� 


		    ������������������������������������������������������������������������������	


		    ����������������������������������������������������������������������������� 

		    ������������������������������������������������������������������������������	

			    ������������������������������������������������������������������������������



		    ������������������������������������������������������������������������������ 


		    ������������������������������������������������������������������������������

			    ������������������������������������������������������������������������������


		    ������������������������������������������������������������������������������

			    ������������������������������������������������������������������������������

			    ������������������������������������������������������������������������������



		     ������������������������������������������������������������������������������


			    ������������������������������������������������������������������������������


			    ������������������������������������������������������������������������������ 	


			    �������������������������������������������������������������������������������



		     ������������������������������������������������������������������������������	


		     ������������������������������������������������������������������������������ 



		     ������������������������������������������������������������������������������	


		     ������������������������������������������������������������������������������ 



		     ������������������������������������������������������������������������������



			     �������������������������������������������������������������������������������	


			     ������������������������������������������������������������������������������ 	


			      ������������������������������������������������������������������������������ 	

			     ������������������������������������������������������������������������������� 



			     ������������������������������������������������������������������������������� 	


			     ������������������������������������������������������������������������������� 	


			     ������������������������������������������������������������������������������� 	



			      ������������������������������������������������������������������������������ 



			      �������������������������������������������������������������������������������	


			      �������������������������������������������������������������������������������	



			      ������������������������������������������������������������������������������� 	


				       �������������������������������������������������������������������������������	



			      ������������������������������������������������������������������������������� 	



			       �������������������������������������������������������������������������������	



			       ������������������������������������������������������������������������������� 	

				       ������������������������������������������������������������������������������� 	
				        �������������������������������������������������������������������������������					       ��������������������������������������������������������������������������������				       ��������������������������������������������������������������������������������			        ��������������������������������������������������������������������������������		        ��������������������������������������������������������������������������������        ��������������������������������������������������������������������������������          �������������������������������������������������������������������������������          �������������������������������������������������������������������������������          ��������������������������������������������������������������������������������          ��������������������������������������������������������������������������������           ��������������������������������������������������������������������������������           �������������������������������������������������������������������������������           ��������������������������������������������������������������������������������            ��������������������������������������������������������������������������������            ��������������������������������������������������������������������������������             ��������������������������������������������������������������������������������              ��������������������������������������������������������������������������������              ��������������������������������������������������������������������������������               ��������������������������������������������������������������������������������               ��������������������������������������������������������������������������������                 ��������������������������������������������������������������������������������                  ��������������������������������������������������������������������������������                   ��������������������������������������������������������������������������������                   ���������������������������������������������������������������������������������                     ���������������������������������������������������������������������������������                      ��������������������������������������������������������������������������������                         ��������������������������������������������������������������������������������                           ��������������������������������������������������������������������������������                            ���������������������������������������������������������������������������������                               ���������������������������������������������������������������������������������                                    ��������������������������������������������������������������������������������                                         ���������������������������������������������������������������������������������                                             ���������������������������������������������������������������������������������                                                       ��������������������������������������������������������������������������������                                                           ���������������������������������������������������������������������������������                                                          ���������������������������������������������������������������������������������                                                           �����������������������������������������������������������������������  RSRC           [remap]

importer="wav"
type="AudioStreamSample"
path="res://.import/duckcry.wav-fba8d3fc67e53664a5ce48b5b164a2bc.sample"

[deps]

source_file="res://sounds/duckcry.wav"
dest_files=[ "res://.import/duckcry.wav-fba8d3fc67e53664a5ce48b5b164a2bc.sample" ]

[params]

force/8_bit=false
force/mono=false
force/max_rate=false
force/max_rate_hz=44100
edit/trim=false
edit/normalize=false
edit/loop=false
compress/mode=0
   RSRC                    AudioStreamSample                                                                 
      resource_local_to_scene    resource_name    data    format 
   loop_mode    loop_begin 	   loop_end 	   mix_rate    stereo    script        
   local://1          AudioStreamSample          �,  !"
		��ľ�������������������������������)<<61-*(&$" 

	�����������������������������������3>;4/,*(&#! 

	�����������������������������������-=<61-+(&$" 

		������������������������������������1><50-*(&$" 

		����������������������������������� ":>93.,)'%#!
		�������������������������������������6>;4/,*(&$! 

		�������������������������������������8?:4/,*(%#!

	�������������������������������������.>=71-+)'$" 

		�������������������������������������+=>82.+)'%#!
		��������������������������������������1><61-+)'$" 

		��������������������������������������'<>93.,*'%#!

	��������������������������������������'<>93/,*'%#!

	��������������������������������������2?=61.+)'%" 
		���������������������������������������+=>82.,*'%#!
		���������������������������������������/>>72.,)'%#!
		����������������������������������������9?;40-+(&$" 

		����������������������������������������7@<50-+)&$" 

		����������������������������������������$;?:4/-*(&$" 

		 �ſ�������������������������������������5@=61.+)'%#!
		�����������������������������������������5@=61.+)'%#!
		��ÿ�������������������������������������$<@:40-+(&$" 

		��ÿ�������������������������������������� :@;50-+)&$" 

		�ɿ��������������������������������������(=?:4/-*(&$" 

		�ɿ��������������������������������������� :@;50-+)'$" 

		������������������������������������������%<@;40-+)&$" 

		 �ſ���������������������������������������6@=71.,)'%#!
		�������������������������������������������8@<61.+)'%#!
		�������������������������������������������0@?83/,*(&#! 

		�̿����������������������������������������3@>82/,*(%#!

	�Ͽ����������������������������������������)>@:40-+)&$" 

		�ƾ����������������������������������������0@?83/,*(&$" 

		��ľ����������������������������������������)>@:40-+)&$" 

		�Ͽ�����������������������������������������3@>82/,*(&#!

	�˿�����������������������������������������4@>82/,*(&#!

	�Ͽ�����������������������������������������)>@:40-+)&$" 

		�ƾ�����������������������������������������0@?93/-*(&$" 

		��ľ�����������������������������������������
-?@:40-+(&$" 

		�ɾ����������������������������������������� !;A<51.+)'%#!
		���������������������������������������������
->?93/,*(&$" 

		���������������������������������������������0?>72.,)'%#!
		���������������������������������������������
,=>82.,)'%#!
		���������������������������������������������  8>93/,*(%#!

	���������������������������������������������.=<60-*(&$" 

		����������������������������������������������3=:4/,)'%#!
		��������������������������������������������� 7<82-*(&$" 

		���������������������������������������������"7;60,*(%#!

	���������������������������������������������"7:50,)'%#!
		���������������������������������������������!6:5/+)'%#!
		���������������������������������������������!694/+(&$" 

		���������������������������������������������!584.*(&$" 

		��������������������������������������������� 483-*'%#!

	���������������������������������������������#572,)&$#!
		���������������������������������������������)65/+(%$" 

		����������������������������������������������/62-)&$" 

		���������������������������������������������	%44/*'%#!
		���������������������������������������������140+'%#!
		��������������������������������������������� /40+'$#!
		���������������������������������������������03.)&$" 

		���������������������������������������������%11,'$"!
		��������������������������������������������/1,(%"!
		��������������������������������������������/0,'$" 

		��������������������������������������������&0.)%#!
		��������������������������������������������!..*%#!
		��������������������������������������������
#.-)$" 

		������������������������������������������� *.*&" 
		������������������������������������������� )-*%" 

		�������������������������������������������+,'#!
		�������������������������������������������*+'# 
		�������������������������������������������"+)%!

	������������������������������������������	*)%!
		�������������������������������������������$*'# 

		������������������������������������������")'#

	�����������������������������������������&(%!

		�����������������������������������������%'$ 

	�����������������������������������������'%!

		����������������������������������������� &$ 
		����������������������������������������$%!
		����������������������������������������
%# 

		����������������������������������������$# 

	���������������������������������������� $!

		���������������������������������������  # 
		���������������������������������������" 
		�������������������������������������� !

	��������������������������������������!
		�������������������������������������� 
		�������������������������������������  

		������������������������������������� 
		�������������������������������������

		�������������������������������������

		�������������������������������������

	������������������������������������

		������������������������������������
		�����������������������������������
		�����������������������������������	
		�����������������������������������


		����������������������������������

		 ����������������������������������

		����������������������������������

	 ���������������������������������

	���������������������������������	

		���������������������������������

		���������������������������������

		���������������������������������

	��������������������������������

	��������������������������������


		��������������������������������

		��������������������������������

		�������������������������������	

	 ������������������������������

		������������������������������
		 ������������������������������	
		����������������������������� 


	������������������������������

	������������������������������

		�����������������������������

		�����������������������������

		�����������������������������

		�����������������������������

		����������������������������

		����������������������������
		��������������������������� 	
		���������������������������	
		 ���������������������������
		���������������������������
		�������������������������� 		���������������������������
	��������������������������
	 ��������������������������

	��������������������������

 �������������������������

	������������������������� 	
	�������������������������		 �������������������������		 �������������������������	 ������������������������ ��������������������������������������������������������������������������������������������������������������������������������������������������� ����������������������� �����������������������������������������������  ���������������������������������������������� ����������������������� ����������������������� ����������������������� ����������������������  ����������������������  ����������������������   ����������������������   ����������������������      ����������������������       ����������������������         ����������������������           ���������������������               ����������������������                  ���������������������                     ���������������������                      ���������������������                      ���������������������                     �������    RSRC           [remap]

importer="wav"
type="AudioStreamSample"
path="res://.import/jump.wav-63d72944e2f01652b323ac239fd6a06d.sample"

[deps]

source_file="res://sounds/jump.wav"
dest_files=[ "res://.import/jump.wav-63d72944e2f01652b323ac239fd6a06d.sample" ]

[params]

force/8_bit=false
force/mono=false
force/max_rate=false
force/max_rate_hz=44100
edit/trim=false
edit/normalize=false
edit/loop=false
compress/mode=0
            RSRC                    AudioStreamSample                                                                 
      resource_local_to_scene    resource_name    data    format 
   loop_mode    loop_begin 	   loop_end 	   mix_rate    stereo    script        
   local://1          AudioStreamSample          �   ����5J[K3���ļ����/@@/���˼����)9D5%��������"3C;+	���ǻ����-=A1 ���ͽ����&7C7&���ý���� 1A=,���ɼ����	*;B3"��п����$5C9(���Ž����.??.���̽����(8B4$���¿���"2B:*	���Ƚ����,<@0 ���ξ����&6B6&���ľ���� 0@<,���ʽ����	*:A2!��������#4B8'���ƾ����->>-���;����'7A3#��������!1@9)	���ɾ����+;?/���Ͽ����%5A5%���ſ����/?;+���˾����	)9@1!��������#3@7'���ǿ����-==-���Ϳ����'7@3#��������!0?8)	���ʿ����*:>.���������$4@4$���������.>:*���̿����	(8?0 ��������"2?6&���������,<<,���������&6?2"�������� 0>7(	���������*9=.���������$3?3$���������-=9)���������	'7>/ ��������"1>5%���������+::+���������%5>1!��������/=6'	���������
)8<-���������#2>2#���������-;8)
���������'6<.��������!0=4%���������*99*���������%4=0!��������.<5&���������
(7;,���������"1=1"���������,:7(
���������&5;-�������� /<3$���������*88*���������$3</ ��������-;4&���������
'6:+���������"0;0"���������+96'
���������%4:-�������� .;2#���������)77)���������#2;. ��������,:3%���������
'58*���������!0:0!���������*85&
���������%39,��������-:1#���������(66(���������#19-��������+92$���������
&47)���������!/9/!���������)74&
���������$28+��������-90"���������'55'���������"08,��������*71#���������	%36)��������� .8. ���������(63%	���������#17*��������,7/!���������&44&���������!/7+��������*60#���������	$25(���������-7-���������(52$	���������"06)��������+6.!���������&33&���������!.6*��������)5/"���������	$14'���������,6,���������'41#	���������"/5(��������*5- ���������%22%��������� -5*��������(4.!���������	#03&���������+5+���������&30#	���������!.4'��������)4,���������
$11$
�������(4*��������!/1"��������(3)�������� /1"��������(3)�������� /0"��������'3)�������� .0"��������'3)�������� .0"��������'2)�������� .0"��������'2(�������� ./!��������'2(�������� -/!��������&2(��������-/!��������&1(��������-/!��������&1(��������-.!��������&1'��������,.!��������&1'��������,. ��������
%0'��������,. ��������
%0'��������,- ��������
%0'��������,- ��������
%0&��������+- ��������
%/&��������+- ��������
$/&��������+,��������
$/&��������+,��������
$/&��������*,��������
$.%��������*,��������
$.%��������*,��������
#.%��������*+��������
#.%��������)+��������
#-%��������)+��������
#-$��������)+��������
#-$��������)*��������
"-$��������)*��������
",$��������(*��������	",$��������(*��������	",#��������()��������	",#��������()��������	!+#��������')��������	!+#��������')��������	!+#��������'(��������	!+"��������'(��������	!*"��������&(��������	 *"
��������&(��������	 *"
��������&'��������	 *"
��������&'��������	 )!
��������&'��������	 )!
��������%'��������	 )!
��������%'��������	)!
��������%&��������	(!
��������%&��������	( 
��������$&��������	( 
��������$&��������( 
��������$%��������' 
��������$%��������' 
��������#%��������'
��������#%��������'
��������#$��������&
��������#$��������&	��������#$��������&	��������"$��������&	��������"#��������%	��������"#��������%	��������"#��������%	��������!#��������$	��������!"��������$	��������!"��������$	��������!"��������$	��������!"��������#	�������� "��������#	�������� !��������#	�������� !��������#	�������� !��������"	��������!��������"�������� ��������"�������� ��������"�������� ��������!�������� ��������!����������������!����������������!���������������� ���������������� ���������������� ���������������� ������������������������������������������������������������������������������������������������������������������������
����������������
����������������
����������������
����������������
����������������
����������������
����������������
����������������
����������������
����������������
����������������	
����������������	
����������������	
����������������	
����������������	
����������������	
����������������	
����������������	
����������������	
����������������	
����������������		����������������	����������������	����������������	����������������	����������������	����������������	����������������	����������������	����������������	��������������������������������������������������������
����������������
����������������
����������������
����������������
����������������
����������������

����������������

����������������	
����������������	
����������������	
����������������	
����������������	
����������������		����������������		����������������		����������������	����������������	����������������	����������������	��������
��������	��������
����������������
����������������

����������������

����������������

����������������	
����������������	
����������������	
����������������		����������������		����������������		��������
��������	��������
��������	��������
��������	��������

����������������

����������������

����������������	
����������������	
����������������		��������
��������		��������
��������		�������� 

��������	�������� 

��������	�������� 

��������
�������� 	
��������
�������� 		��������
�������� 		��������
�������� 		��������	�������� 	��������	�������� 	��������	�������� ��������	�������� ���������������� ���������������� ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  ����������������  �������� ��������  �������� ��������  ��������  ��������  ��������  ��������  ��������  ��������  ��������  ��������  ��������  ��������   ��������  ��������    ��������  ��������    ��������  ��������    ��������    ��������    ��������    ��������      ��������    ��������      ��������      ��������        ��������       ��������        ��������       ��������        ��������       ��������        ��������       �������  RSRC       [remap]

importer="wav"
type="AudioStreamSample"
path="res://.import/scores.wav-b49db6827daa450c0edfa59675c7651a.sample"

[deps]

source_file="res://sounds/scores.wav"
dest_files=[ "res://.import/scores.wav-b49db6827daa450c0edfa59675c7651a.sample" ]

[params]

force/8_bit=false
force/mono=false
force/max_rate=false
force/max_rate_hz=44100
edit/trim=false
edit/normalize=false
edit/loop=false
compress/mode=0
      [remap]

path="res://Double Wall.gdc"
          [remap]

path="res://Duck.gdc"
 [remap]

path="res://Game.gdc"
 �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Glappy Bird    application/run/main_scene         res://Stage.tscn   application/config/icon         res://icon.png     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/ui_acceptd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index          pressure          pressed           script            InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/ui_select8               deadzone      ?      events            input/ui_cancel8               deadzone      ?      events            input/ui_focus_next8               deadzone      ?      events            input/ui_focus_prev8               deadzone      ?      events            input/ui_left8               deadzone      ?      events            input/ui_right8               deadzone      ?      events            input/ui_up8               deadzone      ?      events            input/ui_down8               deadzone      ?      events            input/ui_page_up8               deadzone      ?      events            input/ui_page_down8               deadzone      ?      events            input/ui_home8               deadzone      ?      events            layer_names/2d_render/layer_1         Duck   layer_names/2d_render/layer_2         Wall   layer_names/2d_physics/layer_1         Duck   layer_names/2d_physics/layer_2         Wall)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres              