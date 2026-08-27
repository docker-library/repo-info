## `amazoncorretto:21-al2-generic`

```console
$ docker pull amazoncorretto@sha256:5cb1d6033026fc8432f4df1fec1990a800eec3a0cf054a79df8719faeabb892b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:17a1d1db1a1b79395df56f4702f704f2a2cf83f4d3ec67db256c970d92a2358e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228597676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b87ea7b3018a1a46ca79c821fa7c4b2b127f0dda0daad52efce96dbc6d53246`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:29 GMT
ARG version=21.0.12.9-1
# Thu, 27 Aug 2026 19:11:29 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71587ddd27bcc052237e6d490834ef876c7dd6109f2fd8b3c21492ca1c67dec`  
		Last Modified: Thu, 27 Aug 2026 19:11:49 GMT  
		Size: 165.6 MB (165623852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:02a2377fcf093c0fa516d58eeb2960548140848cb4dd7d7ad59a4b6f1cb4c89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a35611532e6c4ecbf50dd6853a77433b9a618cea90481dd6508cf1f80b0cce5`

```dockerfile
```

-	Layers:
	-	`sha256:52a2f2cb56428656497cd269da01a59c3fa6136c1579b4ce5ebe4c1aa6fcc288`  
		Last Modified: Thu, 27 Aug 2026 19:11:46 GMT  
		Size: 5.5 MB (5536232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12762ca8a37f48dc8c638ae3f9f1db9cfd5bc36b68ecef36ec9503a0b821aeb8`  
		Last Modified: Thu, 27 Aug 2026 19:11:45 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6ec6560dcb3f6b74dd5dde621e4101f4c1bebd3529affdf13b3ed2a94016d2d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228581911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba9505c12139bb9c63795d546a31f7f8c3b1b81de387e2e0741e72a04a2c0b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:14 GMT
ARG version=21.0.12.9-1
# Thu, 27 Aug 2026 19:11:14 GMT
# ARGS: version=21.0.12.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:11:14 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6ec06955e73934ebad06d6bcd57bb80d8456ba1c0744ef69fbe1b219f21df7`  
		Last Modified: Thu, 27 Aug 2026 19:11:36 GMT  
		Size: 163.8 MB (163791355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb2ff468d45a21dccf20aa4d21e2f572eff45bb81aea9051fb25914b77917e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3cc4580fb6ebc056672d30526247df87beeb03a071df6abbf30746df1a7547`

```dockerfile
```

-	Layers:
	-	`sha256:4614972df078c2cd40dd55cc5c292f9287d0b1618c24ce38a6eb103188ecedff`  
		Last Modified: Thu, 27 Aug 2026 19:11:32 GMT  
		Size: 5.5 MB (5534909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:809419a5e4c8c5ab7c09df7c38e81662d95baf7ca3d6e133810762747f2e4ff3`  
		Last Modified: Thu, 27 Aug 2026 19:11:32 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
