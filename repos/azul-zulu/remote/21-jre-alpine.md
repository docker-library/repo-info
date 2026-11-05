## `azul-zulu:21-jre-alpine`

```console
$ docker pull azul-zulu@sha256:f27697f7104120b06a639e216d256ce9d33891aa5067678fcf2688badcab7e28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:99d9250c5219d169803d9db3a9925edc87a7478eb8c1f39b20b38622dcc38e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75471227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a782c0fef259d5a6557093848a96bd958de82ec2d9e6fa68ef9f8ccf65b7ce`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:56 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:56 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.13.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 19:15:56 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aa83a5b34224954fdb54d6523520121f570859a682b42ba99a5a2ddf79ab2d`  
		Last Modified: Thu, 05 Nov 2026 19:16:07 GMT  
		Size: 71.6 MB (71618638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:25ef0b8252a9b4f2e7e5bacbf762bbd9c89286e944193b3084a6c07b4f1cfa11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41377e58c8e013a2b842045870da3d1fbcee5a671b78fd415324838cb2353490`

```dockerfile
```

-	Layers:
	-	`sha256:5f8a9f80fbba6bc389c91ffd0fb4807997899b0a1c5f5cba1ad89c4f0c19a92f`  
		Last Modified: Thu, 05 Nov 2026 19:16:06 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:82d6555a9ac7d69a34a189029a456b92153143473244f4e5c3e51f7fd26badd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75030954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f53af22b88f782d02734d8441f13ddb40a7e98d496887ea4ef234484f3360ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:48 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.13.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 19:11:48 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a0492eafff09168fbbe90a473d08de8c049f972343dd1ecfa2de1517fec44f`  
		Last Modified: Thu, 05 Nov 2026 19:12:01 GMT  
		Size: 70.8 MB (70840733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:200a8f3650254148be8c3e20e75f98e0325c137b19373fa1f2ae7c84e3223a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9689c1d09175dafa6e15eb5f075439a8ab2ca9bc2b95c7e9d38f5260f48a67c1`

```dockerfile
```

-	Layers:
	-	`sha256:49237f5894a2e116c9bb5b3245ba0f52a1dec6eb992d32ee36401d716c0f9db4`  
		Last Modified: Thu, 05 Nov 2026 19:11:59 GMT  
		Size: 7.6 KB (7594 bytes)  
		MIME: application/vnd.in-toto+json
