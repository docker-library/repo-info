## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:b287542ea02f935ba8a7bd4d408434d0e26885ee3e39e140da597dfbbfbb207b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:82afd02e009d48776eb80fc6af1c122c7c2d7ea9eb9cdf2a6e06e555c23af66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48526714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bd15170480b684dbc43484ab05f5d6f28639339c289694bf7a595355138798`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:53 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c65987696bf6b7d685bf2b84f5629cbd438f916f6e98509fa3c2ce96d20d5bdd`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 48.5 MB (48526489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d411f82e7e983406379282b45634e86bfce96630941cc6f0f12edba5a95d82fd`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f9a7ea4ecb660fde4f57760879e22e1045e159ef55498afb077d6e411a3769eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1993b447297a0ee2d64c4d2e9af20fb7e1c8e16f677dfcae9b80a0543694e76`

```dockerfile
```

-	Layers:
	-	`sha256:61202e9f9789cde559b0eddf64408764bb53ad3510f4a1e9ce5f81ba803823c1`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d93c3f6fc3cfe74300efbf907bd5e5a7e8cb9416bbb560bb4ae358276819f302`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:00e7da3f9ef184c64ac6425e8b693818688b82e9f90976195fb3fd7591c048b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44223514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9fa5626678ff1d662f47f154c7a89031fda16446320f46e826abda545f4e20`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1793827419'
# Thu, 05 Nov 2026 07:13:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:239e1217f6869ca7b65a396bc3d8838d8a80423d21bc4a1f5e8d67cec56320e3`  
		Last Modified: Thu, 05 Nov 2026 06:16:25 GMT  
		Size: 44.2 MB (44223291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a41db2c1a49f78e338327f3d14fbf785ba7b5a00ac387a46af80670687a163`  
		Last Modified: Thu, 05 Nov 2026 07:13:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:caa1d246590c46fb3952d514e9e0828241ea22236f00a99e499a78100a86dcd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8054a58cf4cf990ad5920451968448ddf49113d36ad2722cb9c06d43349d910d`

```dockerfile
```

-	Layers:
	-	`sha256:feb766fdd53ee124472e0587238d2e151d83074e649a2227e1cd0458f46c24d9`  
		Last Modified: Thu, 05 Nov 2026 07:13:14 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3012cd88296864b3ba0f8a675fe7cdc195107a1b4f4abf570ce506931b1edd7`  
		Last Modified: Thu, 05 Nov 2026 07:13:14 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:079c9bd24cfc43fa7814835bda40e46e5f8970bb743176202ee0d5b12542e3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fd58720d9fbd9464b9b786ec76efac653e7633b5bd307d8770370b66ffd4b8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:26 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fcb2d5a99af52da37ce88b838dcaad1b60d543543cff96d1c963eac5bf429eca`  
		Last Modified: Thu, 05 Nov 2026 06:16:04 GMT  
		Size: 48.4 MB (48412460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5297a983afae4712bbbb5c8757ae7527614eb0075af2a8ec93f0936bbfd0b5`  
		Last Modified: Thu, 05 Nov 2026 07:12:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:deebbde9adacb20ddb3a0719a5596df05e221e3050bf8712be09c0752b480b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2316707d1cd91112fd331ec64f21edc6c8d032c4b7ba380f27e8598946a91a`

```dockerfile
```

-	Layers:
	-	`sha256:15a4413843a3826195c47047f1a76f03192f7e06b840114d3ddff05b8a6c4cb0`  
		Last Modified: Thu, 05 Nov 2026 07:12:34 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce89d805e9f9acab47365f50b2873595fbfc66488f7bb70550073ed50fe8ccf4`  
		Last Modified: Thu, 05 Nov 2026 07:12:32 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:357c50ecb793074989d22125ee42c410c04bcb87c1282e4133925b486f3a5549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49515920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549c327f17e078f37f735f4786dd9b6cf93e28c3233ae848c345531c595e86fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:44 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c48e814cb69dd87265db469a69b112b96728b78c06f775761ffbc50e22783603`  
		Last Modified: Thu, 05 Nov 2026 06:16:12 GMT  
		Size: 49.5 MB (49515696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4163e4f4a178dcf5d1ce819caa0df6195d514e296baee111394c0ad208176d`  
		Last Modified: Thu, 05 Nov 2026 07:12:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0e15d8fb5206ddabc75d5735aabfcd639c627666006dc7f09a4df16c1471bbfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28448e7807da6a7aa58a5debff0f1c9ac718bd8f2d8bbbd0c0515dbd059eee09`

```dockerfile
```

-	Layers:
	-	`sha256:0945c13b7e66ec983347b02c169c40778f9375d848f0e008862e96fe5e207113`  
		Last Modified: Thu, 05 Nov 2026 07:12:51 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a81e3ae98d8b3fce8a7a6219cf1068796861a1aed98e02c612ee73eb770e37a`  
		Last Modified: Thu, 05 Nov 2026 07:12:50 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:ed463598fa0ee45a99666a489266914f1150cf035cd2fec1618cc10c4ebcc35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52368853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11d8a6032dd08933f83400abccdea7b1e84aa83aaa84477cebb3db9768c7e51`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1793827419'
# Thu, 05 Nov 2026 07:11:39 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1700121c99e228802c6b877b0cbbfa09de6843b11379629c35ed9dea17739525`  
		Last Modified: Thu, 05 Nov 2026 06:15:42 GMT  
		Size: 52.4 MB (52368628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f774dd25a65f55a995fa31ef5645d1bc8597fd511e86fce37330e8d0159eb01b`  
		Last Modified: Thu, 05 Nov 2026 07:11:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a64fc67f224d3e93bcbd6e7b3bc28ea19826192f119b9bcff12dcd510f6c9c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b82708937be797dfd7420b8baa54c417833e19e873c3b47a71189fc1327848c`

```dockerfile
```

-	Layers:
	-	`sha256:a45c26466badd473e9e24f4f651e27d9d6fa45680d7ad5fdce5144c26504db74`  
		Last Modified: Thu, 05 Nov 2026 07:11:50 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3af3895540f1a9310327afdbd854abd50875c3d3e29560275b694b8ae42391d0`  
		Last Modified: Thu, 05 Nov 2026 07:11:50 GMT  
		Size: 5.8 KB (5835 bytes)  
		MIME: application/vnd.in-toto+json
