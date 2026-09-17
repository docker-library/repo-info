## `amazoncorretto:27-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:b2d34b34b705d1b0801d0f1951aefd3667fe6b734f8cfb6b1d9dbd8f894b26fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:58ca65974ff69b1a30301811196c463a86b25d4fa0843f8341ffc291087e5a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187018204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c922a136f0eaa4f69522b619656719de315c9af5ca5e5f717842fe4399634a5e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:39:45 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:39:45 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:39:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:39:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401d8fee47630c486175203f939a3d69761d0d2f3bea1561765982c2ae9965d6`  
		Last Modified: Wed, 16 Sep 2026 23:40:05 GMT  
		Size: 183.4 MB (183371329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8fe77775510c12b3f20655120364358dbb72296f5e4e07c107b06df8e8c04259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1230afe647eca6891d61e1d46fbc102ec2a6af8a538f051cf483583c75a3f3`

```dockerfile
```

-	Layers:
	-	`sha256:934df71aae7cf97a97a146133b114807778b0589b438621e5ee573c67a8441b2`  
		Last Modified: Wed, 16 Sep 2026 23:40:01 GMT  
		Size: 581.6 KB (581596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c085014e3c322a1cc6a6405f92df7c5513e5db7e79b9e757958cdc4a9c1912`  
		Last Modified: Wed, 16 Sep 2026 23:40:01 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:324d0493a40fa52823c6e340c8a3e21700c9c9d1a6635491d868690c07cc984a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184987187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e492c0dc2880f8fc34a52672daf317128bbc8745b7588e493ae0b1c47807fdac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:42:02 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:42:02 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:42:02 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:42:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:42:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a5d2e00e26ba4612ac1d6f6300a67b20d22c61f766a4fbff33f16bb77b99a8`  
		Last Modified: Wed, 16 Sep 2026 23:42:23 GMT  
		Size: 181.0 MB (180992722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:be7d7bf48c0b1d554ec630832ca6c53359a161edacaa002753e9049d1c0d628f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cde29b645602f3470eebf8588cdcb9d745a9409d788c35214985b3e586d6f7`

```dockerfile
```

-	Layers:
	-	`sha256:1520515f7dee3e4f975c40720f6f59457c874e84c2e9617e9593a911123a3350`  
		Last Modified: Wed, 16 Sep 2026 23:42:19 GMT  
		Size: 581.0 KB (581012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e222c013554ab2161b4d1d331f4c0613aa922fc4c1b078b10440d0e5158db273`  
		Last Modified: Wed, 16 Sep 2026 23:42:19 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
