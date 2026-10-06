## `debian:rc-buggy`

```console
$ docker pull debian@sha256:f1d70ac5d17b3461d28a4abfa3d79f9f8b7211fc57427d26d7bb710e2aa366a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:1edfcbf42d85aad630ae09110af137c33af4732c2dc37d39973e0ae30811b83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1e574bd08d5d5b88df1ce6a05595708c5c5bb1bcb163188e19f582899cac8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:12:28 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b43f8109ee6868b4da5eaaef5f982f7567515dafb2148c28f0781d3d297cea4`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:0dd59ba5045febf2ceef3996f7bc970efa4c97044f199bf021bc973a99bb27d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d567bfd368201d033b345ac9ffce1c8fde64a1b43ed84920e702ddf33cb710`

```dockerfile
```

-	Layers:
	-	`sha256:36d2804cba70287434c86da013ca00701bbd3346ed144c27dcc4274541d26f6c`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 3.2 MB (3184495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55828a424f8c30fef53c6e26611e1e9ebd6e2f7483edf98f8fb3b938bf62354e`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:1127b9421e138cf432f371131d5b37a43bab0b1b9dfb6ac5e4467c0b9e7110f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46000580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20496005858834bbc5d895c7cd5ec032bfe47598bf9ec255ac281f31e864b87f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:15:37 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:013cfa307d38f84d98e177e42a2eb6302161ed63a9ebe977844f734d310da242`  
		Last Modified: Tue, 06 Oct 2026 00:13:27 GMT  
		Size: 46.0 MB (46000354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9046539ecb959d99279dd59abc9527b993a3e05dbdc109f1413fd187ffaf2721`  
		Last Modified: Tue, 06 Oct 2026 01:15:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:3c1892f882b5e2e27d657081fe87a6bc172be33e000da6c21803c0f75091023a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:723b120c8e08e359cd9fec3e9d3645bf3765f997622fca9b30c0a3cd647ec386`

```dockerfile
```

-	Layers:
	-	`sha256:d783f946a49e71161adbf07c8fb295c4f96c61ad90ca00725eab288b67fd33f9`  
		Last Modified: Tue, 06 Oct 2026 01:15:43 GMT  
		Size: 3.2 MB (3175624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60344c6102dc91798505809d1e6e11d52fa26b804fd42125e1ded39caa69d75`  
		Last Modified: Tue, 06 Oct 2026 01:15:43 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a7a985e7dfb184fe476679aeb83b2d749b0880d2c9d97555c60b3262d0317755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930757af46a1a9e94c1c3d82c950862c7b28cb0feed62ac18d29e238c8459a44`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:13:06 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f5e0393a58d1388bb0116ef5a7d9449717cfe9386ec69ae503f97f5ca90f6f`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:b700c1b994d91380741a15dff85fdc5afe740d091db66e9041feed29f46a3897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88f9de99a4665f57a6c314ffad3bd015ab7bf07986995713383331dad57fb27`

```dockerfile
```

-	Layers:
	-	`sha256:a9d7be9662000adb6fa02bf2e47a4b0f59c6c1ce126eb37251f0b818706ab24d`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 3.2 MB (3187956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4623d25e88f4d2ade2a6c204e30f17408d1f931e3b8324e670367a2893bdd27c`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:c8d6feb98b299e3cbee0ecf55c6f8d1c90a1b7a7d06645ca13d5c912533d89f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50753035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e603cdae223e5fa3162f348998c825c74e886a356eea3d0475aab136d30d27e8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:14:52 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bd5724770bbdaa71b742f800d2122b7147b2b32e878d3d32538cabd3fab7e3`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:f80e49f96513a2672c60bab7881d7f1e87749ba3134cedfabb6bc1094f2ede87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8180ce156de2086174466f09ad4d37addf66772cef6f8cf638fd997cf7c7c5d4`

```dockerfile
```

-	Layers:
	-	`sha256:10895992fedef0f2c2b842834b3ca598904cb5cff3c357b1759135a7ca399cb7`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 3.2 MB (3181589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1bbd1378e162cce820bee79973972bedc01d5c2eba5f63fedef544cac03209`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 6.0 KB (6034 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:9963efabeacdca1c3edaf86dd7b164742d0ace4923707499b8a3462804649a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54495880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc038e6b9cab54b072afd1b1f3127ead2eb005df8567fbc492f1ebddf1afe224`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:17:21 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:879c8c596683a589a22d88f106abb6c642b7746d92470d0e9281af7b3fd80325`  
		Last Modified: Tue, 06 Oct 2026 00:14:12 GMT  
		Size: 54.5 MB (54495654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd020ccee6fc2205fc98cd2b499a12fa3d92b6ebf7f736647bd8201bfb690ed`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:491efc58355c696c6c379da8d26cc69ddcb6f7df381e06f3e1cb5141c2482d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e880ed3f08c567739cf97ea224e538db6c65d27aac4a75cecd0a6ea712b6be20`

```dockerfile
```

-	Layers:
	-	`sha256:1b4dda98c4b0c87483cdf5d474df4c6e978ffc66bd37a387b24315110fa1c3fd`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 3.2 MB (3177855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd7c45c4c485ce03794171b3c73fc2262bd63abb137d2474571ae560be5efd46`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:b4f9a4f021a83719696037c804d76f70d8189fe4cb794fc849eeb50945f10c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47130731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54dd9be77701eec20e8b38499ded5f3787b19f7926ebeb7861c795941863d6a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1789689600'
# Wed, 23 Sep 2026 04:53:38 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:30538fc542fce7748e1323fdf450904ebd72fcb5f34f619b66a3656ae4ce3879`  
		Last Modified: Sat, 19 Sep 2026 03:56:13 GMT  
		Size: 47.1 MB (47130502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3840ea0b8f34305231af07f7e362803b2eeaf83c7b9c0009aee70e8c1a2aac5`  
		Last Modified: Wed, 23 Sep 2026 04:54:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:a4174013c3b93901c965009e8c82565fcac205e4b5a6fe11fcbb976087193a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7e8e4f8950688fd6c7b119b489a3aab383ebd04363e3a8f33653e2b06e9ebc`

```dockerfile
```

-	Layers:
	-	`sha256:7bc8dab4b9977aa557321385677d39d4bf449e16ca2363b8bd609ac1938d4177`  
		Last Modified: Wed, 23 Sep 2026 04:54:36 GMT  
		Size: 3.2 MB (3176046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d28da72fda75c5946994d4c752a0b3ba046a21affeecb37f489f2b60919d3ffa`  
		Last Modified: Wed, 23 Sep 2026 04:54:36 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:3e2436ac75b784100a0e45c6dfd16ae9f0e4febb84bfc6264e7c15d0f0adafb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48908514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f973aea8f3eaa9e0a2cee78fd2c865df5573c3a72b00ac5f85486166fbd44ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:13:41 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:3b2f5d15526d3e07e793acb96f627120833f3e67b1bf7484f7825bab71b4631b`  
		Last Modified: Tue, 06 Oct 2026 00:12:25 GMT  
		Size: 48.9 MB (48908288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2663fae283070fca3440cdfe23202bab807591c20c0bf246084f7d11cdab6380`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:421173a97fe499d19253670ed02bcabe2031168d202a35f5902d57c6c2b37c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4215bb81f617c6ac1622fd904394b55d759b6b1b6f2b27ef39265016491a18ba`

```dockerfile
```

-	Layers:
	-	`sha256:7f05c7623cb5d3c43f2f281da6af906ebe95a2879826f1de83c4d88243fcb413`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 3.2 MB (3175485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38519e13be6c9710732ab43540a9ba31b27ad9976fa8864a1f43e48dc30f47b`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 6.1 KB (6055 bytes)  
		MIME: application/vnd.in-toto+json
