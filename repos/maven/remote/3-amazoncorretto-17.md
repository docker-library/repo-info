## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:475899b439105307855f98016b66dcea1dd72dfa78e1c458ea2f4354e210baea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:5a7b003a5be17f94a80095bb553c1f0154ee0865b2a5d8f2d62d771ad68ec747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438632721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c69ee8c33221d0fa9741cb91f5e4350ef9064a925646b1cef4078d46aad823`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:59 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:18 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:14:18 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:18 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:44:39 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:44:47 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:44:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:44:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:44:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:44:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:44:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:44:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:44:47 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:44:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:44:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:44:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b5a31d0a32c9342b5b53f098c4d8ac4fadeb6cbc6b34b2e4424fd39eb880bf9a`  
		Last Modified: Sat, 13 Jun 2026 04:09:34 GMT  
		Size: 62.9 MB (62942019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91bfd2599ba044359e57f7483de74c4605efe350141bbeb5e51bfa4a3c23b9b`  
		Last Modified: Mon, 22 Jun 2026 18:14:39 GMT  
		Size: 152.7 MB (152678781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c00367aae546e597cd9bc300c3fe50c40bf01791fe7e532c92acd01b689d28`  
		Last Modified: Thu, 02 Jul 2026 06:45:16 GMT  
		Size: 183.6 MB (183580246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dedd589eef85f51684b71986c095e31edd85d062364d219999b6657abc28de4`  
		Last Modified: Thu, 02 Jul 2026 06:45:13 GMT  
		Size: 30.1 MB (30070690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf524ad92277d43dd5f14fe8bf025212e58f152d387bcc76fb717948eb374e0`  
		Last Modified: Thu, 02 Jul 2026 06:45:12 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178bc804074686a7824231a465dca943e0bac093e2bd7f91f1b320cf14fb0552`  
		Last Modified: Thu, 02 Jul 2026 06:45:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e1c8da2deb9c54d618313a038c5a437bcd0ab61d6d1739a3810b2539f2876`  
		Last Modified: Thu, 02 Jul 2026 06:45:13 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:605c5ec2b98177237b3c8903b81a6675eae52918d0870b2cc0f61aef3be5bb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6949361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b2e195e9f073a5568bc488fd5d7c8a10df05b45283988c46f7905ba564f8f6`

```dockerfile
```

-	Layers:
	-	`sha256:ba56c43cd54169a897338c335a89cd079c210ee5189c75b5193187d654b1981f`  
		Last Modified: Thu, 02 Jul 2026 06:45:12 GMT  
		Size: 6.9 MB (6933165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:037850dd1bcafea8d3b8d9f1aab4a790394b703df40cb30e52a9b5735888cf00`  
		Last Modified: Thu, 02 Jul 2026 06:45:11 GMT  
		Size: 16.2 KB (16196 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b0c96e858fc42039ed4761e90e20380554e092d5a902f3adb5103f69afff0f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.7 MB (415738711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eadfa5fdcfc89ef5c7f5314b88ea3e050271b35f3ca13bc2815a18e690b2504e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 18:00:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 18:00:28 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:16 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:14:16 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 22 Jun 2026 18:14:16 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:36:05 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 02 Jul 2026 06:36:13 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:36:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:36:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:36:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:36:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:36:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:36:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:36:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:36:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:36:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:36:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:36:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:36:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b30ecc040ec91b7e580ef7f93f591eaf80422b110a473c44b4d0dbcb2301395`  
		Last Modified: Wed, 17 Jun 2026 13:06:48 GMT  
		Size: 64.8 MB (64794736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0d804c084121f03b54fc16c0bdbdcfd660261c53137d6c83b654614d5f7772`  
		Last Modified: Mon, 22 Jun 2026 18:14:37 GMT  
		Size: 151.3 MB (151277376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e3dd45e345634159d1addbc573dee7db2218923c005f40bfebdd723b2e7ba1`  
		Last Modified: Thu, 02 Jul 2026 06:36:43 GMT  
		Size: 159.1 MB (159105114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027aa64d82433c4100410a7f5de9be318f7b416a5b5db4caf9daa98aa6bc7def`  
		Last Modified: Thu, 02 Jul 2026 06:36:40 GMT  
		Size: 31.2 MB (31200501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74c6ff767aa1e39a060fb9bea914fe3405590f80dbef589295d5d2044c66441`  
		Last Modified: Thu, 02 Jul 2026 06:36:39 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8ebe8940eef0fa8db109c850894f835afc8c5059d4a4bd9e36a416e8e72cbe`  
		Last Modified: Thu, 02 Jul 2026 06:36:38 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fd07ec5aa93ee0907d484979631bbba6f2cbcdc1abc7f34cf8496320e03805`  
		Last Modified: Thu, 02 Jul 2026 06:36:39 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:f5d3d32be83bde9723180ed72a725d1da3d8a0299fc2a6756007f4c39a942193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6946906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d84e200f77ef0be77c2ed9c2ef764d7c88e1e18a271e3b97d0ae7bc50c5d57`

```dockerfile
```

-	Layers:
	-	`sha256:bb3e397ba552fe19f841d0595061bcb1ba56cef3adc8cb5c78b00ce43eb2baa9`  
		Last Modified: Thu, 02 Jul 2026 06:36:39 GMT  
		Size: 6.9 MB (6930564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59fd8c4a254b575efcd7e5b15a55010f0dd3c9c851b31addadb136839cf57e99`  
		Last Modified: Thu, 02 Jul 2026 06:36:38 GMT  
		Size: 16.3 KB (16342 bytes)  
		MIME: application/vnd.in-toto+json
