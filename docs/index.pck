GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�#      �      &�y���ڞu;>��.p    res://Terminal/Terminal.gd.remap`,      ,       ��P�w�W���w�   res://Terminal/Terminal.gdc p      �      Kpt�IM��b����   res://Terminal/Terminal.tscn@      W      �*(w�+��}�a-24   res://Terminal/TerminalWindow/Input/Input.gd.remap  �,      >       :/���@z?�g�N��0   res://Terminal/TerminalWindow/Input/Input.gdc   �      s      ���1
̹�a=�T�0   res://Terminal/TerminalWindow/Input/Input.tscn         2      � <�r��'��L��J4   res://Terminal/TerminalWindow/Output/Output.gd.remap�,      @       gs%$����kMM����0   res://Terminal/TerminalWindow/Output/Output.gdc `      J      $C �q*,{W���+0   res://Terminal/TerminalWindow/Output/Output.tscn�      W      %";�>ܘM�*��ͫT8   res://Terminal/TerminalWindow/TerminalWindow.gd.remap   -      A       x�,��h�'�u�"P�G0   res://Terminal/TerminalWindow/TerminalWindow.gdc      �      l��a��Q^��>�~n�4   res://Terminal/TerminalWindow/TerminalWindow.tscn                g8��(����#���   res://default_env.tres   #      �       um�`�N��<*ỳ�8   res://icon.png  `-      �      G1?��z�c��vN��   res://icon.png.import   �)      �      ��fe��6�B��^ U�   res://project.binaryP:      \      �^�7�T��oq�j        GDSC         6   �      ������ڶ   ����������Ӷ   �������������������Ӷ���   �����������������Ŷ�   ������������Ķ��   �����������Ķ���   �������Ӷ���   �����������ض���   �������������ض�   �����ض�   �������������ض�   ���������������ض���   �����϶�   ����������������������ض   �����������������������Ҷ���   ������Զ   ���Ӷ���   �������Ӷ���   ��������Ҷ��   ��������������Ӷ   �������������������������Ҷ�   �����������Ҷ���   �����������ض���   ����������Զ   �������Ҷ���   �������Ӷ���   ��������������¶                         TerminalWindow                     
                              %   	   0   
   1      8      C      D      E      F      G      H      I      J      P      R      V      W      X      Y      Z      [      \      ]      c      e       f   !   g   "   h   #   s   $   z   %      &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   3YY8P�  Q;�  YY8P�  Q;�  Y5;�  V�  �  P�  QYY8P�  Q;�  Y5;�  V�	  �  P�  QYY8P�  Q;�
  Y5;�  V�	  �  P�
  QYYYYYYYY0�  PQV�  -�  �  PQYYYYYYYY0�  PQV�  -�  �  �  �  ;�  V�  �  T�  PQ�  �  T�  P�  Q�  �  P�  Q�  �  PQYY0�  PQV�  -�  �  T�  P�  T�  PQL�  T�  MQ�  �  PQYYY0�  PQV�  &P�X  P�  T�  PQQ
QV�  �  T�  �  �  (V�  �  T�  �  YY0�  P�  V�  QV�  �  T�  P�  �>  P�  T�  PQQQY`    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Terminal/TerminalWindow/TerminalWindow.tscn" type="PackedScene" id=1]
[ext_resource path="res://Terminal/Terminal.gd" type="Script" id=3]

[node name="Terminal" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 3 )
TerminalWindow_scene = ExtResource( 1 )
TerminalWindowTabs = NodePath("VBoxContainer/TerminalWindowTabs")
NewTabButton = NodePath("VBoxContainer/HBoxContainer/NewTabButton")
CloseTabButton = NodePath("VBoxContainer/HBoxContainer/CloseTabButton")

[node name="VBoxContainer" type="VBoxContainer" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="HBoxContainer" type="HBoxContainer" parent="VBoxContainer"]
margin_right = 1024.0
margin_bottom = 20.0
alignment = 2

[node name="NewTabButton" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_left = 881.0
margin_right = 947.0
margin_bottom = 20.0
text = "New Tab"

[node name="CloseTabButton" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_left = 951.0
margin_right = 1024.0
margin_bottom = 20.0
text = "Close Tab"

[node name="TerminalWindowTabs" type="TabContainer" parent="VBoxContainer"]
margin_top = 24.0
margin_right = 1024.0
margin_bottom = 600.0
size_flags_horizontal = 3
size_flags_vertical = 3
tab_align = 0
drag_to_rearrange_enabled = true

[node name="TerminalWindow1" parent="VBoxContainer/TerminalWindowTabs" instance=ExtResource( 1 )]
margin_left = 4.0
margin_top = 32.0
margin_right = -4.0
margin_bottom = -4.0

[connection signal="pressed" from="VBoxContainer/HBoxContainer/NewTabButton" to="." method="_on_NewTabButton_pressed"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer/CloseTabButton" to="." method="_on_CloseTabButton_pressed"]
[connection signal="tab_changed" from="VBoxContainer/TerminalWindowTabs" to="." method="_on_TerminalWindowTabs_tab_changed"]
         GDSC             H      �������¶���   ������������¶��   ������������Ҷ��   ����¶��   ������������������Ķ   ���Ӷ���   �����϶�   ���������������������Ҷ�   �������¶���   ���������������Ҷ���   �������������ض�   ���¶���                                                           	      
                                        "      #      $      %      &      '      (      )      *      +      2      4      ;      <      B      F       3YY2�  YYB�  P�  QYY;�  V�  YYYYYYYY0�  PQV�  -YYYYYYYYYY0�  P�  QV�  -�  �  T�	  P�  QYY0�
  PQV�  �  Y`             [gd_scene load_steps=2 format=2]

[ext_resource path="res://Terminal/TerminalWindow/Input/Input.gd" type="Script" id=1]

[node name="Input" type="LineEdit"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[connection signal="text_entered" from="." to="." method="_on_Input_text_entered"]
              GDSC            Q      ������ڶ   �������������¶�   ��������������޶   ����������¶   ���Ӷ���   �������Ӷ���   �����϶�   �������������¶�   �����¶�   ���¶���   �����ƶ�   �����ƶ�      [         ]         
                                                       	      
                            &      (      )      *      +      ,      -      .      /      6      O      3YY2�  YYY8P�  Q;�  Y5;�  V�  �  P�  QYYYYYYY0�  PQV�  -�  YYYYYYY0�  P�  QV�  �  T�	  �>  P�  QT�
  PQT�  P�  Q�  �  T�	  Y`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://Terminal/TerminalWindow/Output/Output.gd" type="Script" id=1]

[node name="Output" type="TextEdit"]
anchor_right = 1.0
anchor_bottom = 1.0
size_flags_horizontal = 3
size_flags_vertical = 3
readonly = true
wrap_enabled = true
script = ExtResource( 1 )
OutputText_path = NodePath(".")
         GDSC         /   �      ���Ӷ���   �������������������޶���   ��������������¶   �������������¶�   �������Ӷ���   ������������������޶   �������������¶�   ������������¶��   �����϶�   ������������������Ķ   ���������������Ҷ���   ����¶��   ������Ӷ   ������Ҷ   ����¶��   ������۶   �����Ŷ�   ߶��   ���Ӷ���   �����Ҷ�   �����¶�   ��������ض��   �嶶   �������������ض�   ������������������Ӷ   �������������¶�                                                                                 	      
         "      -      .      /      0      1      2      3      9      ;      A      B      C      D      E      F      G      N      P      U      V       W   !   `   "   j   #   r   $   x   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   3YYYYY8P�  Q;�  Y5;�  V�  �  P�  QYYYY8P�  Q;�  Y5;�  V�  �  P�  QYYYYYYY0�  PQV�  -�  �  T�	  YYYYYYY0�
  P�  QV�  -�  �  P�  QYYY0�  P�  V�  QV�  ;�  �  T�  PQ�  ;�  �  L�  M�  ;�  LM�  )�  �K  P�  R�  T�  PQQV�  �  T�  P�  L�  MQ�  ;�  LM�  ;�  �  T�  P�  R�  R�  R�  Q�  �  T�  PQ�  �  P�  QYYY0�  P�  QV�  �  T�  P�  QY` [gd_scene load_steps=4 format=2]

[ext_resource path="res://Terminal/TerminalWindow/Input/Input.tscn" type="PackedScene" id=1]
[ext_resource path="res://Terminal/TerminalWindow/Output/Output.tscn" type="PackedScene" id=2]
[ext_resource path="res://Terminal/TerminalWindow/TerminalWindow.gd" type="Script" id=3]

[node name="TerminalWindow" type="PanelContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
size_flags_horizontal = 3
size_flags_vertical = 3
script = ExtResource( 3 )
terminal_output_path = NodePath("VBoxContainer/Output")
terminal_input_path = NodePath("VBoxContainer/Input")

[node name="VBoxContainer" type="VBoxContainer" parent="."]
margin_left = 7.0
margin_top = 7.0
margin_right = 1017.0
margin_bottom = 593.0

[node name="Input" parent="VBoxContainer" instance=ExtResource( 1 )]
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1010.0
margin_bottom = 24.0

[node name="Output" parent="VBoxContainer" instance=ExtResource( 2 )]
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 28.0
margin_right = 1010.0
margin_bottom = 586.0
    [gd_resource type="Environment" load_steps=2 format=2]

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
              [remap]

path="res://Terminal/Terminal.gdc"
    [remap]

path="res://Terminal/TerminalWindow/Input/Input.gdc"
  [remap]

path="res://Terminal/TerminalWindow/Output/Output.gdc"
[remap]

path="res://Terminal/TerminalWindow/TerminalWindow.gdc"
               �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classesd                    class         TerminalInput         language      GDScript      path   ,   res://Terminal/TerminalWindow/Input/Input.gd      base      LineEdit            class         TerminalOutput        language      GDScript      path   .   res://Terminal/TerminalWindow/Output/Output.gd        base      Control    _global_script_class_iconsH               TerminalInput                TerminalOutput            application/config/name         Terminal   application/run/main_scene$         res://Terminal/Terminal.tscn"   application/run/low_processor_mode            application/config/icon         res://icon.png  )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres      