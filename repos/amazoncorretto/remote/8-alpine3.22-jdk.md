## `amazoncorretto:8-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:d2bf98424594166d42a1015faa5ed2f503ee0027b8d2a652f80052deb9e52407
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:79c06300bcf674fa6757e7a7cae0f95b48cfd5ee0897790fef8e3e20ce093ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104659775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2092226cbcc470c9a28f13fd8916c219345c53ba72001e3d15d28a7e45123afe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:06 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:06 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:06 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711724aa7980eb77b2b677800d1669fa8f7dfc1ab55f4bfdb6fce70b3bad13c1`  
		Last Modified: Thu, 05 Nov 2026 19:12:20 GMT  
		Size: 100.9 MB (100865400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:767e36f3bed7cbbbdedc690540449e25d77b2680c8ba7a5b9030bc8b95a70674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6437d3a6de74c8a22461da450293cb56df8e9d772e89ef1c9f54b72feab0aa`

```dockerfile
```

-	Layers:
	-	`sha256:5e347b849787448ecd60a36b0fe56f6482df76345a6e2dd3ec4dbd77a0398c84`  
		Last Modified: Thu, 05 Nov 2026 19:12:17 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1ef4f08100b41ad817c0381576d7f5a9c6d701a486c2d149a1a5e00de4ada6`  
		Last Modified: Thu, 05 Nov 2026 19:12:17 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f6f42d288d9c7f121305ba94ab8b7fd0947c8510c576d73559405130176c9cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104823589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2642d126d7d749433a7a3ef2679fa6d98ca9a1f137e7a16c2585dbaedbeed23d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:01 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:01 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871941f04810c3dad6575d6714997e9069028f5ac43a4924406a30feab35a53e`  
		Last Modified: Tue, 27 Oct 2026 16:40:15 GMT  
		Size: 100.7 MB (100696208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4342224b3acd49aeefad8f7f2da118c1f1a93db110cc2752192b5573b39c5662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aed508f3c8797cdd05fd55444ecd2378bb6426705cd124b5586169ff0ce5cfa`

```dockerfile
```

-	Layers:
	-	`sha256:6847cf721c5e13dd0fef56b8f51fed29eb24295bc8a692899d1aa654add2551b`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119b12b09f75403f61727bf6214c05ded926d6602dec774f7c700b2e5c62be04`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
