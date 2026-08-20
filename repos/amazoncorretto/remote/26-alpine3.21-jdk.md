## `amazoncorretto:26-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:974ec1cd3cf864b13947f12e805702e83c4dc88e258bfa6de199b0e689812615
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0e7ecbd83ce77b10ec242cfa2c52b943815468f155fc3093f15b9a962e0b6c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189138196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dbeaf31dd258a300d22030cae132cc78b4a7f3db66d11af88cc520c973bd84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:33 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:33 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:33 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081df8109226b529c8367f5d849b4c05b21a2362f9a0e6762bbafc0973c3222b`  
		Last Modified: Thu, 20 Aug 2026 17:21:53 GMT  
		Size: 185.5 MB (185491321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e88d0f9f020d73ae01e2a3d439330e7d74dd7379f8a6995299fba4829da6edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.2 KB (600229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b86815e1bfbb968e20314e8806e6df3cb6791aae74ea740c417f688f8b46149`

```dockerfile
```

-	Layers:
	-	`sha256:d6d97a2c3757837227b45d77d6545f8561c92e25712c2bf73068a96d3328dd1f`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 590.9 KB (590857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8904eb719f849d9a4cb11311d9a13348cdaa20e85c14381a149aab8e75fb5da`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:07317b339aaa8ec02fdc3aa2f9f7b052d0f2376485f15d2d0eb5c4b32c889f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187017594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7df659f62edb316580697877d93becb3cf21edafe128ec382015143d55869`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:37 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:18:37 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:37 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80695d3762585e7a6659f94e9056ba33289a2fb3f6a5b1b4356d01a30a4890f8`  
		Last Modified: Thu, 20 Aug 2026 17:18:58 GMT  
		Size: 183.0 MB (183023129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee0d582b8c9fd6aa13da9aab5d605ab3afe8be36dc141341c72aeb11abf3d592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99b2f37e81b3d7442adbf300821b5cdbc5e8b2efdb9f152dac813a9afc4c9fb`

```dockerfile
```

-	Layers:
	-	`sha256:1a921f0ae911d58fc3c3cff5e1d4744c46d8b3a20c5a6b139254fbec8d70f694`  
		Last Modified: Thu, 20 Aug 2026 17:18:54 GMT  
		Size: 590.3 KB (590273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ee14bb6e1e690a58230c698b76f96989fdb0edf476f0502228f6382fc6b52eb`  
		Last Modified: Thu, 20 Aug 2026 17:18:54 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
