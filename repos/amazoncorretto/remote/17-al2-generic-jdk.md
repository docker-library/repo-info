## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:a18f84e4dd184f1ca26fb6f81ed037da10511846e0b49d2c0dc970325e5da0ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5ca387d7fc6476dafad5fd77d1bb3d0519d1a7f9ee14c5abe24c0f5f44ea8692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215522382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba45b2bc05bb3496aa6cb262476f311d7b5dba4c3108cae628f294cb6e28e413`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:23 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:11:23 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:11:23 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0dd1c227a22a514f145cdf8621e2e79f957c57b5b7c53ead9557b2acbf9b498`  
		Last Modified: Thu, 27 Aug 2026 19:11:44 GMT  
		Size: 152.5 MB (152548558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:add90bb5bfd524c0b2461b080e777d43cce2e097654d7c51b913ebaab19f1fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aaeb3c809199f1ba94c815c2244e2996444d44bb8415a900209e712b25723bc`

```dockerfile
```

-	Layers:
	-	`sha256:de9a99212a6ea1c8bb923ff7b0749d27c1a77fae770d855852bb47094b652dbc`  
		Last Modified: Thu, 27 Aug 2026 19:11:41 GMT  
		Size: 5.5 MB (5536333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ef1eb33aa65a1bb094560f4f57ac8a1132af27aca3db00f34029f8bcfe2fe9`  
		Last Modified: Thu, 27 Aug 2026 19:11:40 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fa776c7aa4626c2eb8ecac9c6306dc621861d11ea8cac5044a1f811435f41530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215963444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e31dfce8d76d8ab55937113522dc85ed80f8ea391015a65c003b7933e052a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:19 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:11:19 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:11:19 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693c4beaee490055e514df4262f0b6ab1a15bb73ff3879a96bc835cbd6b2aa4b`  
		Last Modified: Thu, 27 Aug 2026 19:11:41 GMT  
		Size: 151.2 MB (151172888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ad1db56a792a429455e7e4629ee34d1312b24e1e8de75db6b331f503f15188e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee1ce3bcf57b942ea45c35e025bd6b092daae2f7e6daff5454f325946d5b7cc`

```dockerfile
```

-	Layers:
	-	`sha256:c327b29a8d8661faa2d6d4e7b1b81bef37538ba09bac92b1d1f7921e52ae791a`  
		Last Modified: Thu, 27 Aug 2026 19:11:38 GMT  
		Size: 5.5 MB (5535010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d99b34e4d01e869f36c85f2e3655abe426823d803159ea0d7f9fc7f5d5baaf6`  
		Last Modified: Thu, 27 Aug 2026 19:11:37 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
