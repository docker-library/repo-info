## `amazoncorretto:19-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:a197d796640268bd6fcb74507f92efe69274b2c13de63ee36a07c25058d4bd3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazoncorretto:19-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4930e8f74055136023c974da82904a4fbd0f735049bd1533a1e58966fb64e4a3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221746409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decdf3d2dd93979e5d323db8091d9cd42c40580c4d0c93eb467661da30ef1417`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 23:10:48 GMT
ARG version=19.0.2.7-1
# Thu, 26 Jan 2023 23:11:12 GMT
# ARGS: version=19.0.2.7-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-19-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-19-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 23:11:13 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 23:11:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-19-amazon-corretto
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009521bd92b79e8a902f16adc7c501e565393be19ba7e6af30a50fd72b0b4897`  
		Last Modified: Thu, 26 Jan 2023 23:15:09 GMT  
		Size: 159.4 MB (159405341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazoncorretto:19-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5111e41b5017eabd05801924c7deb6d316c7798099e1a53647fd43d05272e405
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221803135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c962edca8516c2f42021892dcdc8d5049edbc0141cddcd25cfb23077bf91f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:57:40 GMT
ARG version=19.0.2.7-1
# Thu, 26 Jan 2023 22:58:03 GMT
# ARGS: version=19.0.2.7-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-19-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-19-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all
# Thu, 26 Jan 2023 22:58:05 GMT
ENV LANG=C.UTF-8
# Thu, 26 Jan 2023 22:58:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-19-amazon-corretto
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c8f82fc76726fff20fdca4309df9c5c0b672224cb10e328731cfc6406aaa04`  
		Last Modified: Thu, 26 Jan 2023 23:00:25 GMT  
		Size: 157.8 MB (157838493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
