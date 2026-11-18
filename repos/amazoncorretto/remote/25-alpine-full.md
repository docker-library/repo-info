## `amazoncorretto:25-alpine-full`

```console
$ docker pull amazoncorretto@sha256:1124f698f69d2185828dbd1a1ebeb9aee21884ac64bed7af3deeafd20b21a9dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d7816c3fbf5aee33b021eb8d42d2a21f2e82419574fe428fd37070617987a6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185399233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9152702d98451ac5b5e9c20e61737b30db7adeb62dc978add7d7d027f98f28a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:56 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:56 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4700543510a61f921876f15fb15d33a2e42174d5e3c8d6271af05d6ea1833073`  
		Last Modified: Tue, 17 Nov 2026 21:35:15 GMT  
		Size: 181.5 MB (181545560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c13b640d229d849ff356d1ee23d952db9f4c4c8e8297cd74cea1384483f5b4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccad7afd23d0fa07e8c9ffcd5f4746d5e74188b8f1bcb08eb3a984b0b1b2e436`

```dockerfile
```

-	Layers:
	-	`sha256:31dc6728757058f18514e23d8aeab6bb17af7a13bcbedab2a9e77fee3e4d1ddb`  
		Last Modified: Tue, 17 Nov 2026 21:35:11 GMT  
		Size: 592.9 KB (592881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b20b7ff65447130c09428a522b1a4dfea9f08d3fd5081dfa6064df87dc7079ef`  
		Last Modified: Tue, 17 Nov 2026 21:35:11 GMT  
		Size: 10.7 KB (10676 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:625ab1bb169ae9a45538fe1574dabcabd66f883ea6253f8f1c57b94fc2341f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183294427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd5789459897cc049f61f84e513f514aad9f817720476d05493d1f27eac0446`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:55 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:55 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee16bb05063a1144fb2c65be130f34675a6a95bd089db06bda0b10a16d1dd65c`  
		Last Modified: Tue, 17 Nov 2026 21:35:18 GMT  
		Size: 179.1 MB (179103832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:920d956d2886e76b121b7011cf934abc6b89f4224f312d44ec1f3af17085ae6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916ab058c4bd58e2625c5c8043e292557ff59df0922fe02793060748190e9ce1`

```dockerfile
```

-	Layers:
	-	`sha256:2b9894dee25ab1f4b0e83f5009a22d5179d6390b1f8d023bd238e26f7c4d85b9`  
		Last Modified: Tue, 17 Nov 2026 21:35:13 GMT  
		Size: 591.7 KB (591695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599272f9e8afc45f79ff0f97936ad2f326cca11da394a7732f5b461b5a943b03`  
		Last Modified: Tue, 17 Nov 2026 21:35:13 GMT  
		Size: 10.8 KB (10829 bytes)  
		MIME: application/vnd.in-toto+json
