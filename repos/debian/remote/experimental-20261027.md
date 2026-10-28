## `debian:experimental-20261027`

```console
$ docker pull debian@sha256:c900697fce5cac80edd4eca90811ab7a09985bc6abd0e39cdbd27ec06f527d35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; 386
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:experimental-20261027` - linux; 386

```console
$ docker pull debian@sha256:08da7b7d09bd792e869b6be1ab24889ddbf9c3192a050a213e990dd1a2dc0cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50951514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2238d25e04c3194b6e62eab99f34376c501941cec4d28447155caceea035c232`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:218b17b699af66ab1e816fb94d215bce6c7dcc7817eb59bf5668e267bb655f16`  
		Last Modified: Wed, 28 Oct 2026 00:11:34 GMT  
		Size: 51.0 MB (50951292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9786d01ce538d1d38262c7f81644aed422479432b29c634bbc5d49764c2811`  
		Last Modified: Wed, 28 Oct 2026 01:14:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:bb5d3e603a51e3a44075b309b1f945f995c400ec8b4abc220eae105170a7f801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b352925081145ee5021e7c199c5fd325a5546ff5b0572b03ee7a9f16895189`

```dockerfile
```

-	Layers:
	-	`sha256:75b72c3c07156bbff972c8181683cee1ae6d1cc4617cd777089aad54a3123d23`  
		Last Modified: Wed, 28 Oct 2026 01:14:06 GMT  
		Size: 3.2 MB (3172835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93e48b95ee6145b68762e0e3be6243ba316eb1df7e10ac0c4fd60d68937aabdb`  
		Last Modified: Wed, 28 Oct 2026 01:14:05 GMT  
		Size: 6.1 KB (6078 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; s390x

```console
$ docker pull debian@sha256:ed8fc9e809b3579bd5c09dde4a50f378ae918432aa859d0f6c20258380b1dd42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48927088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d164f83f6c811c189123200e1e4df81a244f63c4ecaa3770113926bd3fab2e6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:5027860a266f8001f1a4d5763d04b6d106fefd34526c05b3ea18d15914777767`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 48.9 MB (48926866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c7dc646b79829b66d33b4324f6b82c2bf4efbbbde34c6d918a8481fda7c3b0`  
		Last Modified: Wed, 28 Oct 2026 01:13:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:a5fc77203f7c1e948bfd864b3502730df742d134cb2cb987361e7830c3fbb3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdfba55a867efcc01b2bbf673731c01ceaf0fb9ca8fd484f7b2442ce1d01bfae`

```dockerfile
```

-	Layers:
	-	`sha256:b2de0cfd1ed006db81cc96dd87b223fa6778894a79e4667cffce99327b3d8715`  
		Last Modified: Wed, 28 Oct 2026 01:13:31 GMT  
		Size: 3.2 MB (3177138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef299e06a3a488305b915e0f0e20a7648decdf9eb60e63a07e336e235716a975`  
		Last Modified: Wed, 28 Oct 2026 01:13:30 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
