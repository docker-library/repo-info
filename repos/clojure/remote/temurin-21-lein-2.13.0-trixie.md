## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:e862f3f12a6e737e885e27343e0ad7a6d43d3fd089da0b9bef9474df3e6930fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4906d6e97afff76bafb0781fbbf0f54406d45315a0f9bc6b33581179c6a65e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230912995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbca4d2c2ceef344635afe71fdb1ad1361c0d549b064050e0d3235109659ed8a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:58 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:15:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:15:58 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:17:07 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:17:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:17:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:08 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38fe4616fb420df40255956bf0582399b634228ef085cacc6278f36943d0668`  
		Last Modified: Sat, 19 Sep 2026 01:17:29 GMT  
		Size: 158.1 MB (158120308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7b465677bbd43c571935ceb2644e4293512b4715f1d01d0140b58f52d802ac`  
		Last Modified: Sat, 19 Sep 2026 01:17:26 GMT  
		Size: 18.9 MB (18897378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca9241c05cbd88afed5f71f008855e2bdcbebdfeba3dc4c5c666e6cbde670f9`  
		Last Modified: Sat, 19 Sep 2026 01:17:25 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e00012f9bb97298d33717474fb85fc60d7eaa47b44fd8d91258b66b3daca3d`  
		Last Modified: Sat, 19 Sep 2026 01:17:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e6ded3c1fe7ee62f6073acb231c66d6b2abc24cec3497db45628c8d15245aab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063b219fdf2cd9f0b5c83dc470834c67fe50c2b138ddb17dba912a2571855e98`

```dockerfile
```

-	Layers:
	-	`sha256:9f65a86a48ff1aa3b61562ef6cd416337eb15184698978393f251c189b8ad764`  
		Last Modified: Sat, 19 Sep 2026 01:17:25 GMT  
		Size: 3.8 MB (3829591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9637c17b245866dbeba77b800aedc66ddf98d072efcab527aed6bb429b684856`  
		Last Modified: Sat, 19 Sep 2026 01:17:25 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee6bbcb7d03601b165116bb04bdd6728106deb07b9bf1c219233100810097d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229511157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10974bc7fef7c7cc5ab679bd2f4afc1a688b9954ced186cc1175d6b6ed746ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:23:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:19 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:19 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:24:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:24:35 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:24:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:24:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3812db7ce6a47f29d582ad2d29accb71109bfc21a2bf3f90873808e0e36884`  
		Last Modified: Sat, 19 Sep 2026 01:23:57 GMT  
		Size: 156.4 MB (156401959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226b66b80114e07a8b37e4233a69cebbc9d70f055c2b9c52d9b92dec9cef8e73`  
		Last Modified: Sat, 19 Sep 2026 01:24:56 GMT  
		Size: 18.8 MB (18844731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c520c085735410177f5c555017f85b5dcd6ff29cb9613284d6dff0664db390bc`  
		Last Modified: Sat, 19 Sep 2026 01:24:56 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b3a6b5f192b5080e945b555a280d57aac222e932f8cae94dab04ac30f50f49`  
		Last Modified: Sat, 19 Sep 2026 01:24:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0c697f45b0438cc720b9d7edb3ef32c157285754ba1adf0a6a5584a0f175bbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4542c11c70fa9b0a654a4b21bd06b5cf0b43addf8339170d0668c53e8743d76a`

```dockerfile
```

-	Layers:
	-	`sha256:7e269800e92eb21d42f7cbdfbc5e3523732c6dd251b00d36907529c2b3f991ae`  
		Last Modified: Sat, 19 Sep 2026 01:24:56 GMT  
		Size: 3.8 MB (3829831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b884059c4a359b08d8c1e2ae735d6d1b60b70eda379027a927f755c5c30e884`  
		Last Modified: Sat, 19 Sep 2026 01:24:55 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:863452004748eea3b632d05530cd8aed8caac35ce84ea17b9e02b99ba95d030a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238664391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260aa76adddaa05062420100d13dde62a8ae98585233aa8392d96632ae281d71`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:09:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:09:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:09:52 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:09:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:09:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53add64fc20feaa84cc5fd870738ce6b277b4d4dbdcf777052404db1bdfcf82`  
		Last Modified: Wed, 09 Sep 2026 11:10:27 GMT  
		Size: 22.7 MB (22709594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277f7854182030d24eb78cf5476da4fed6734e1a8b0c1b3461a4a4af2d4b7805`  
		Last Modified: Wed, 09 Sep 2026 11:10:20 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71842b95446fa056ae4e89e540f6fb6959ad046eb286e0a9ab5c7486f9545c2`  
		Last Modified: Wed, 09 Sep 2026 11:10:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4a352c9c654c25407eb93ed237b429c6832d4e8a037be7584ad80e3afa56f6c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d8cd5f97e43f1fe66c915369fa5671871ab7c54eb207eb01354ac8e282bbc8`

```dockerfile
```

-	Layers:
	-	`sha256:cf7e709c02a77e329b602c0841d7ad59ffe5f2feea6a3e27565a2ceec784780b`  
		Last Modified: Wed, 16 Sep 2026 10:52:00 GMT  
		Size: 3.8 MB (3825684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ea373f045eb808569d47f6afcc6e0c926b18e81e3523f13fbe38697c57d338f`  
		Last Modified: Wed, 16 Sep 2026 10:52:00 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
