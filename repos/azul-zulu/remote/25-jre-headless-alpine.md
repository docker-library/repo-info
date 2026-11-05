## `azul-zulu:25-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:6f24a48acdbb903251070de61d52aaa8047dc30f51161bed98cf13374994fab0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:61890ee236c3afb627e29f9fdfea5dbedc34d643cc44d8d0354bce55eacc6350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86880104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0284dab222e87ee03d064620aa6cdfca81a37478171e6325ae270aed7310ade2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:16 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:16:16 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a17bf341e53c8d3b86b629cc2bf442e4e90076ba4bcecb2232ae4b6ff8b683`  
		Last Modified: Thu, 05 Nov 2026 19:16:28 GMT  
		Size: 83.0 MB (83027515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7cc36d9343ede6a9e88ba3127b4a425ac216fcd8088386ef1efaad46c2e77317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab65e8f8dc783d8a4d725dac8685d39013a98865600a88aa4be3d979abf2bd8`

```dockerfile
```

-	Layers:
	-	`sha256:77afa1f92e307d03db9b0223991dc7c35a878d838f98908f5ee69c1d19bedabb`  
		Last Modified: Thu, 05 Nov 2026 19:16:26 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fe86cdb505141b0614c8912a2d4812d72e13aef4d5334c5f3667534814e2a0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (86009962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39a98ae01d297d1a93a0d548d6bdf45cb112d73a47c4d32db4081d13a463985`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:09 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:09 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:12:09 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b97e260197b53612d62f9d4f0ef00abece0ab0242c273cba3e986793c4749f`  
		Last Modified: Thu, 05 Nov 2026 19:12:23 GMT  
		Size: 81.8 MB (81819741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:735462e85bda148316623c9934c8e89778dc0a59c27df920f669dd70c7428eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3854b663b02163b2a0902ef4e9d2af484d587323c9037907c2a67bde2bbffb`

```dockerfile
```

-	Layers:
	-	`sha256:2f1eaacade79aec97d19a47ccddfacaa506c6e3cf073f140c05babd34a5cd856`  
		Last Modified: Thu, 05 Nov 2026 19:12:21 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.in-toto+json
