## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:551c87bcf36fe3560411332a525b786c178b3a23032778e65565e629ad6f7c28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-25` - linux; amd64

```console
$ docker pull maven@sha256:9464f8976129f1250bbe836c87b050b371324c4fc8ea8fa8dfef72d2e2c8b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291976224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fd18586c097d9b28129a3fd758d9f9df1e65519cc26b7b04d61cd2523cdb34`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:24:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:05 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:58:32 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:58:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:58:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:58:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:58:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:58:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:58:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:58:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:58:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:58:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:58:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:58:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:58:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58219fddf991baf6671813ad50894e1d402257cc64da95b965b360b8eb863d1a`  
		Last Modified: Wed, 22 Jul 2026 18:24:29 GMT  
		Size: 225.1 MB (225050013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2156b1a26b440f165e6437056e1546e04e340a28829beb82813eb6fdb7eafa`  
		Last Modified: Wed, 22 Jul 2026 18:58:45 GMT  
		Size: 27.8 MB (27829626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8445aafc17b835bf23ff9eccfffdbcdfa355c2e942b6067237d18c9d2fc31725`  
		Last Modified: Wed, 22 Jul 2026 18:58:45 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7720f947e3a24a5c0d39682497d5e98073efe21cc80d5041afedce84e4a11bc`  
		Last Modified: Wed, 22 Jul 2026 18:58:44 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213dd5bd58fa861f62fc84a9c7905b25d992bda38f1ca8d02993536300daf677`  
		Last Modified: Wed, 22 Jul 2026 18:58:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:9839dd7c84fb2be0d10a408f26045f1ee645bcddde293280e1287da03e618906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed855db04a4015e36f9e4f400b53d56be6272b98d472829972f2e2dcee8fd24`

```dockerfile
```

-	Layers:
	-	`sha256:8e5222a3cdeb62de0968621b35699493bbd2506bd7fd91294504aa94657e475f`  
		Last Modified: Wed, 22 Jul 2026 18:58:45 GMT  
		Size: 4.3 MB (4296257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c14c5ee849afca45423f1f7a7f675ec60779643fc7efd1b8318b562f02902a`  
		Last Modified: Wed, 22 Jul 2026 18:58:44 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:44e60bbb4cd2c351b28a9a3c281d670687f3a142565b95bf869ae8134244186a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288924900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92bc109f90e329b8e9d64aca5b9047e2e7c631f93021257afb845b3b896b12a6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:22:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:21 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:51:42 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:51:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:51:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:51:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:51:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:51:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:51:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:51:42 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:51:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:51:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:51:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184ad4b99cf4b6d4359339252b35569a3b52d2703fe324af4590bd6fda7c20da`  
		Last Modified: Wed, 22 Jul 2026 18:22:45 GMT  
		Size: 222.8 MB (222818284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587062f1e0c383c618bc3d923859bd2cba983be3e669224d1125aa90f57883f3`  
		Last Modified: Wed, 22 Jul 2026 18:51:56 GMT  
		Size: 27.9 MB (27861453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e68f700ca794ccf5c52ace860e3790f3441c109b6b09be2295bbd11e47fac5b`  
		Last Modified: Wed, 22 Jul 2026 18:51:56 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d114c6e29eed75bfcbbadf4a8b2245bb6bf369ba15fed3e615a575996e341c`  
		Last Modified: Wed, 22 Jul 2026 18:51:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eced87ed93a6ed5648aca20a89f655d575ff0b92364bceb432c45fbb5b7e264d`  
		Last Modified: Wed, 22 Jul 2026 18:51:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:3a5505920d2e01eef72e9abb21af464a31ff03fd5fca622f0753584d490b3ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9209b2eba6eb99620dee776a4c89697d47d172a2adf9d961ecb66bf2bdd171`

```dockerfile
```

-	Layers:
	-	`sha256:2709be8abcab36a219f0651808615979714725d48774e5334b94681272d17a3b`  
		Last Modified: Wed, 22 Jul 2026 18:51:56 GMT  
		Size: 4.3 MB (4302776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da8910244b7988e384fcd0fb5af55e4072e44d1fb811989b7dbc04d0e9638bb4`  
		Last Modified: Wed, 22 Jul 2026 18:51:55 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:abeccd6f8c516cdd3ae81c61f5792b07ce842d8924423a5ea089319d3541855c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299104664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10943788c5b19d168d7f1e31f5c546b7a77f109c4d315e7633c43ab10c1a8791`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:28:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:28:53 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 10:08:43 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:08:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 10:08:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 10:08:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 10:08:45 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 10:08:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 10:08:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 10:08:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1ef5730b9db5cab8d8f33f2692b49ad442d26504879f88f4d728c5cbb3e8b`  
		Last Modified: Thu, 02 Jul 2026 03:29:34 GMT  
		Size: 222.9 MB (222907186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb1109104e56a14e35d3ec58edd71d10a8626f4680bb3046a91b36ae89ae002`  
		Last Modified: Thu, 02 Jul 2026 10:09:21 GMT  
		Size: 32.5 MB (32523030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c2e0c48c638782661232c27e4e296833979aa4ddc7eda78d095452ac8ceef7`  
		Last Modified: Thu, 02 Jul 2026 10:09:19 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85a410f2107b1d32e433a120e4f05a28d57457736ece283e6f6fe6a4d79513`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea48a8b4929b197ca70a3ba320b095f44832c65ec011c36695bb30be9ddf265`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:2f0fb0bd9b7f435c559ec3bd4517b9719c8661c6600241222b7e479973572c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6066a7eeb8273b14802bd2fe58d21b9b1287d66f386a4d37bcdb48c0bac6fc64`

```dockerfile
```

-	Layers:
	-	`sha256:b0dad67701275dd672f6d8f41aa0f99931ab30fac576f8446218ebc14df3c41f`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 4.3 MB (4296068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a1df179bd1a9ba1fb8cc3dc263ec36bc59d7a953f7b1196bf0ab23951c0f3fd`  
		Last Modified: Thu, 02 Jul 2026 10:09:18 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
