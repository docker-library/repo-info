## `azul-zulu:25-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:003555acf1fc84eed12b005094f42f9844197dfff220dac3f43afb97f456e147
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0d2ccb5ef85115e7d930a9b45c5c129a3c0b339e15e88513805812ed26ee2fe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (184032023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2422470f0e15f05b447e278a02e79c84733e6526d4fdabe09a719d3c6329fe3`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:01 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:16:01 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:16:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a117343c9f5dc1eda4c64a95186b409fc89554b997cac223460e0aaae832efe4`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 180.2 MB (180179434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7f71822f47305f813f931e096c8b87c2cccc57f9dcbc163e0918bfc778cf798e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd147584246ebfbf9016102f80528b23250fdadab3bf2d044d3a6a9be8b7f966`

```dockerfile
```

-	Layers:
	-	`sha256:d35abf90663b16a92543d9527641efabf29eccc0008605bc34375d3b06607377`  
		Last Modified: Thu, 05 Nov 2026 19:16:13 GMT  
		Size: 7.8 KB (7835 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:42d7bd3a3ee9cf9e3f9683f0906ae3fbebbe9f4508ff5493b62a3e9d3b7faf13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181942622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fb3971133c8634816744a6dda444113018537f7196c940f7e41e74b6bf83f2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:51 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:11:51 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:11:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfebcf6009f667006827a4f5cdd6c162bcad05e641f2b182e71dca46f2129553`  
		Last Modified: Thu, 05 Nov 2026 19:12:08 GMT  
		Size: 177.8 MB (177752401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d2fe6d6313755cd327cf25c1a017b3e5e6bc5baf464e0331164905905487978a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ea79e72d1d80821212065cdd798345b9b7586b9bb88f76f95e68597cd72b5f`

```dockerfile
```

-	Layers:
	-	`sha256:d35e0c672c237a45f23ef2fbed22accb423a281dca2006d6901edad930402bfa`  
		Last Modified: Thu, 05 Nov 2026 19:12:05 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.in-toto+json
