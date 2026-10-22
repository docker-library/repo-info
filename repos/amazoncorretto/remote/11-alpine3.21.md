## `amazoncorretto:11-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:570341def4b372da1454b872253b83e41775a2c4fd8c51b9f65189524fdf9f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0b00fdd789425c0ef3a587bc8361301806381fcff24ca5b8e6e8ba3f3531f72a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147567714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58391a7b654c8b2b6e1bba0ea057dff93e2ebfe4ff1a86e81949d8b6c5980a66`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:52 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:14:52 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e92e57a27951e38502283a0ee79c9e23271430e13790530cc7fe04051429821`  
		Last Modified: Wed, 21 Oct 2026 21:15:09 GMT  
		Size: 143.9 MB (143942319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6895ec894d2d6ec8f4827015e9fe0fa049403f746ddc680bada64b2511af0409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf77a620fb4208ce9207406ea75c462b6ca805184f13db12a4e7b62a574465e`

```dockerfile
```

-	Layers:
	-	`sha256:f358cc93738c4f864fcd824bf02465df68a413b3134825fa3d7f1b5b50bcf1ca`  
		Last Modified: Wed, 21 Oct 2026 21:15:05 GMT  
		Size: 593.4 KB (593369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:740a59fc3bd10156ba0955a02d1c65f381b25e19226638713927aa989f5059f0`  
		Last Modified: Wed, 21 Oct 2026 21:15:05 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a1c50560cab78af4ca25ea063dc6debef46bf7ed31034561cd306b106b8a69f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146297665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798671444b20b89e234d1b7255a4fe7d442b4000ed7573d70e5378311c4705dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:20 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:15:20 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8880b5b40179d04a8c2690314fbf998daba923d354c2caeb0aa9138f9b86a232`  
		Last Modified: Wed, 21 Oct 2026 21:15:37 GMT  
		Size: 142.3 MB (142323294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cb0afd255d26115807c391571c6e0073eb5d4539d231e698515e737b2ae5b82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f61aa268e0176a46ac8e3a05ba13cf5235cf980006dde34e7f2f3da51cb20e4`

```dockerfile
```

-	Layers:
	-	`sha256:5087908c5bc8a7c656a3e9dc760a6acc2444243d1dd3fb37a2891b4c2984f3de`  
		Last Modified: Wed, 21 Oct 2026 21:15:34 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:217ef7a7afc70e08a437e06782ef6edd8103105ddc28a39bfeee7ceee75fef8a`  
		Last Modified: Wed, 21 Oct 2026 21:15:34 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
