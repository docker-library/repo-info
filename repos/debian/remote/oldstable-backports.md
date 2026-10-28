## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:634f0926c3d6c82e33e077d2cbf71b88191c8740e708300f78cf2ce2d852b656
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
$ docker pull debian@sha256:d1449aecbe4fcd593b341fc47933a3d972e8dd5d266b45518803d1798463f032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48524782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2939ccff5d517e274a1bbf5f7814bbdb60175e585eaf87153271a590acbf57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0520916e7c184ce940b4462cc2aad99235a4f6dfb542103944f7370c97759f88`  
		Last Modified: Wed, 28 Oct 2026 00:10:55 GMT  
		Size: 48.5 MB (48524556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563fc66dd57e0d05d6c4c8695daf572929250ef3498cbc28110b7bf5beebdb3`  
		Last Modified: Wed, 28 Oct 2026 01:13:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bed23d633acb0192070ade19c41672dd40021f4e3d9ebf8c54e67b435915365b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8858ff5b3b1a76b54c294d0f8bfa4a2624d88bfed603d4cd0bc578de9622db`

```dockerfile
```

-	Layers:
	-	`sha256:43d87e6dd9f1ae939934918b7874503101111c2ee04cb27e3a4b2acf70c59fac`  
		Last Modified: Wed, 28 Oct 2026 01:13:17 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59c3b0f067e4bca20c2ebdc7f0481bb3e48a0609dc46ef40846e5105b6e21464`  
		Last Modified: Wed, 28 Oct 2026 01:13:17 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:e33a11f00827a73014efa863229c4a439493cef1d7e57be326dd7dbae8f1d744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44221338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3fc1d1ccc182e0641e9da346cc79d6b832008d86e32304953d984cc802c488`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:80fc3d82646c7da42595279abcbd7962b2a368c8a8909b041f124617302a0980`  
		Last Modified: Wed, 28 Oct 2026 00:10:45 GMT  
		Size: 44.2 MB (44221113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f2dfd4f0a9423c4c3bc5648d8d3fd9df1cd6e3f629292e38264e7127630b49`  
		Last Modified: Wed, 28 Oct 2026 01:13:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:063e108c1dc0f4c29543ded377c2dd2e876700427466c7ff17dcd06d0466ddf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f248934ebc8b2ccb25a2e6179a53a436719e4b3829d5506845723b32242832`

```dockerfile
```

-	Layers:
	-	`sha256:bfa81a599c8cd78b5d2e6d6e20c66951cb3612f48687e4e3c01a970669d44502`  
		Last Modified: Wed, 28 Oct 2026 01:13:27 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c3faa880435d02398bcd18a6dd5a299187c843b6b7541339db9270ad2e6838f`  
		Last Modified: Wed, 28 Oct 2026 01:13:26 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:6978c8a372e008fa8936f3777495de8a44f24397c2632713de0364ec06ea242b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48405406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56deadb7297b3b0d2be95151ad7b73cc9253eb9d985e80b0a5102c227866436d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:db7cfd0907a49b1cd33c6de48df28906d795b8028865ae62c8262e5e9ab8365c`  
		Last Modified: Wed, 28 Oct 2026 00:10:53 GMT  
		Size: 48.4 MB (48405180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1def136a52276388825f9cb8db69596b3f6189d51a453a8a1d4ca87e19ea0919`  
		Last Modified: Wed, 28 Oct 2026 01:13:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f77ad0d123ae4e3b91239fce45783d1c18702795d939b6aabfe4b7ae600c78fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a115469eeff1e2616774f520920ce20731089339c83a40396544af1ab69fd69`

```dockerfile
```

-	Layers:
	-	`sha256:1cfd9ff1e234ec9b08329e5cccc847c258c2627232a445a6b937a02f28d98fee`  
		Last Modified: Wed, 28 Oct 2026 01:13:19 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:718dfa6042b25eb5f46e249b5ca869dbbd3fddcf7a29556e0463381368331d08`  
		Last Modified: Wed, 28 Oct 2026 01:13:19 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:a287806e57ce18a3866a854bc6607ce3a45c7ddb349282f91a8440537cf5cc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49513769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426a72effdae288ef400392ee51e2ab6e0f40adca6df80193536b2b037977d6a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:26 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a433e5b4652419f5855c364ac64aa2b098fc5123208204154aad725e6a1c470d`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 49.5 MB (49513543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d4a8b1136845c6e3425bba302edc55f64e21e7144cc639ab3a92ce64d8436e`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:94da76b44291362c7e06c226dd946f649afa31a23fa92bc63e6a8d77f0923854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb97052297484646aa6df9978e0115eb4563508c21ec03c00fb9958d1170a0a7`

```dockerfile
```

-	Layers:
	-	`sha256:b83dc41b1cce8558756b9f9e43973bc8c4058391dd05da96c58edd8a94fadcff`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac29fe187e6aa7b8c458bf74f2d9891742114cb61a5428c373e326f6d35e218a`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:60b525ae271dbd980ee4a5aa1bef42d83a693965fe021d2b836cd9a087393fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52366539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472bf91129bd8c9a959d5d00f4a418ffd52df3496883149cb7de0a41e771695b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1793059200'
# Wed, 28 Oct 2026 01:25:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e6d26d9044abfb9385a4050eea2ff3bbd0a6dbe95961b6d452717ae79c64d58b`  
		Last Modified: Wed, 28 Oct 2026 00:21:47 GMT  
		Size: 52.4 MB (52366313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491f89ced51ca4a58c9591fdbb2d3cb072983576bdc08296e5d5934ab0371599`  
		Last Modified: Wed, 28 Oct 2026 01:26:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1223a5826aa2eaadb7dcfead23127c888e49d837895e12800a878be126c7206b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7bb4742171e187d50ed6fbb64df67be6d0297292c163160ce0c86164ca4bcb`

```dockerfile
```

-	Layers:
	-	`sha256:dc19fcad30f7428adcc13c21e27d9405e54a1484129aed82f68620d00428483e`  
		Last Modified: Wed, 28 Oct 2026 01:26:19 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ecf66bc6138653d714e3c4e52571b4f6fd74abaf5ccd972973361c0a2106e62`  
		Last Modified: Wed, 28 Oct 2026 01:26:18 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
