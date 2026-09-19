## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:7bcaf9b579775b9b13ac70717cb363814647655d0c30e626d6c2d3cc6f450d65
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
$ docker pull clojure@sha256:c35e33611ae2ed17ee506fe5b9b3401e4e9590a78a92e7c89b242b65c889a59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234927208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f00dfac805f330a1f855e388759d280541f18c119ab5aea18780ab72c0245`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:22 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:06:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:06:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:09:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:09:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:09:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:09:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:09:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6eb4a3d87f0293c946026fcba3cec01f100ef9faf9910f5717bc56e7b5117b`  
		Last Modified: Sat, 19 Sep 2026 08:10:43 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f4d761f4cb42593911f37158b6645a8fd28adf854dbe3c3b698820d1a8f101`  
		Last Modified: Sat, 19 Sep 2026 08:10:40 GMT  
		Size: 18.9 MB (18941565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb72413c2e39eadb6425f8e6842c069555d4c5dabbac7fa69f1ee2e8fac3f3`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad0c5791747c541fc85ebd9fcf56ea71e87b07f67b63dcd161a70c2be91941c`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:811edb2619efc22f0d8e5d726bc28ae4ee735a45c78e05c87a5a02316f8cb19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feba0c80a2d3c5312287e24625961e8e3b4c5e4d620273277baebbb6c68ce46a`

```dockerfile
```

-	Layers:
	-	`sha256:e48b3983d3ae8b55b3b0bc766d6fe759d6490182b53ac238fb4534418b4b6372`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 3.8 MB (3830589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39d2fb8eb36a8574a2b95801e3e93f3752fd778ff61e4eaf3ec2f16b5980b8bb`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
