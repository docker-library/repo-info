## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:807b1002b5b777fef78f82ee222e710f41bdfabcfdb8aecb93d23c0b958b3c33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ed7139a56dc66d7fd381366d45aea07deb76fd4e31e4b6fd860bb8c841797537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167272180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89c39fa8d4b2adc732c0f05b37a3230a8ebf1ef1ec48bdfbabb47c1f870bebb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:25 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:22:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:22:25 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:37 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6805985e61b736cc811c48a191ef667766c09a6d9db89891b3cd62910f5281c8`  
		Last Modified: Fri, 21 Aug 2026 19:23:58 GMT  
		Size: 94.6 MB (94563729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8096d71a6153f50582b8fb964b26f625a7da2f6b4f6cca2bbb73a7f1b47fa3`  
		Last Modified: Fri, 21 Aug 2026 19:23:56 GMT  
		Size: 18.9 MB (18880511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9f5d2bf0e4bf71c4958f333541f5364e9342ec30de2efff111a4ed3c34a312`  
		Last Modified: Fri, 21 Aug 2026 19:23:55 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818099a4543b33f4d0fbbc6046659262a523fc8b9bb75133ccb91bffaa7bdfb6`  
		Last Modified: Fri, 21 Aug 2026 19:23:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c4a123167d498057a5aec29339008a24e4976e236a3ff5c9b73da9fe8c9e98fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d40e712a0463779a3cb7ef785b976cd1109d606ecaebf4391b95561d2f84cb`

```dockerfile
```

-	Layers:
	-	`sha256:be99d135fe6aa6a57192e8e5361306dc17b3b029a409879ccdad2c3481599352`  
		Last Modified: Fri, 21 Aug 2026 19:23:55 GMT  
		Size: 3.8 MB (3782749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c00150d2d0ab8a2a8618c495ea5dc6f61270c489dd60a0066c80a5a7950b0969`  
		Last Modified: Fri, 21 Aug 2026 19:23:55 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b28adff1592aaf88481e01ca68b61721b35ccce963cac228b767db5940194e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166570632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73af48f2f548ceee405ee3e390e8fb830b0dfa9379afff7140227b686feaa722`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:12:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:13 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:13 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:28 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669708f94a321bb97911758351497addafa6591df8c93d2d41a8447258716bf0`  
		Last Modified: Fri, 21 Aug 2026 19:13:49 GMT  
		Size: 93.5 MB (93541549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9290fdab7e1973ecade199e62972fbc219f9f4c73d1d999dd466e5db99f78230`  
		Last Modified: Fri, 21 Aug 2026 19:13:48 GMT  
		Size: 18.8 MB (18839594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc145b840fb2b54529f808881fad05087da99e7e1304fb0d69938c2395a325e9`  
		Last Modified: Fri, 21 Aug 2026 19:13:47 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20eb807638ddac87739becd56faf895e21bd1fda028051be80e2827cd1aab0c9`  
		Last Modified: Fri, 21 Aug 2026 19:13:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7e333fb9114f39b17b7e8e3868362c61dff714229ba8fda1e841f8acb8d27cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e37d555957fcc5fa177bdd41f12c83f8a4ea44b356c6a2d7806c5132997dcd`

```dockerfile
```

-	Layers:
	-	`sha256:e0ef9a627f6cb511975812f959778e1bc3ed8d5fa8d573c5d1d61feef8b2444e`  
		Last Modified: Fri, 21 Aug 2026 19:13:47 GMT  
		Size: 3.8 MB (3782986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff698ec34e97cbac3cea3fafec4c779559de33788dc6f767f53eab07d5b97d15`  
		Last Modified: Fri, 21 Aug 2026 19:13:47 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:177ab825d9d8baf5b545d72d6ab2b5699d97262227fba193e26e071df1989d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169936808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadc23db422c570d1f432532b7847f90459941d5760e803759778d274ec989ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:13:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:13:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:13:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 23:13:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 23:13:12 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:16:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 23:16:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 23:16:22 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 23:16:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 23:16:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:16:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:16:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661cb193da0b6268d49ff9fa226fda7050c685d520d4ce9d75d4c2eb3ce90db9`  
		Last Modified: Fri, 21 Aug 2026 23:17:00 GMT  
		Size: 93.4 MB (93350799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff88df23374a1879c8fd73d811c59f66b576f78a0d398ff9a9ecdac16780e8e`  
		Last Modified: Fri, 21 Aug 2026 23:16:58 GMT  
		Size: 18.9 MB (18936772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ab34352f5007b050ebd17e960664841a448496cd99a723c195816b4c2af59`  
		Last Modified: Fri, 21 Aug 2026 23:16:57 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e337c5e66045a12dd42b1cefc8c113ca77d84bccf3ab144c9f4c4e71ab29de3`  
		Last Modified: Fri, 21 Aug 2026 23:16:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eb967941fe12fc24b7f78936d74f9799be2fd528aabf84e3d67ec15aaab8ec59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680331a14f560cc2e1b79f3911c02b7aa34dc3b68c06b35301093650635a7bfe`

```dockerfile
```

-	Layers:
	-	`sha256:3814711736c9055aa929b03a005b2b6395cffcdba792df0a9e18ab95689a6ea1`  
		Last Modified: Fri, 21 Aug 2026 23:16:57 GMT  
		Size: 3.8 MB (3767685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822749522b26a9f923fe6c201f4b030cd9857399e4ae4221eb657a3b70c2c75c`  
		Last Modified: Fri, 21 Aug 2026 23:16:57 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:66b1a05ba5f3f03e1f6bb0927d30c0344d2b7636031943256e0ebe7ec732ad4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163407394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e5a14cb367a53defc7327e563c592f708e510e6aa266ee246e951d35b8dae1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:13:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:43 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22012fbde78eb07aa0517d281326b172cb2d3b8ccd9c297129d6e571121007df`  
		Last Modified: Fri, 21 Aug 2026 19:15:09 GMT  
		Size: 90.6 MB (90588167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd50b53759ebd1a688336832f75559beba89106c6ab27969cb53510ee26d568c`  
		Last Modified: Fri, 21 Aug 2026 19:15:08 GMT  
		Size: 18.9 MB (18922164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e5881e7316e99c353c455f0f678b85c67809a776cd15ff317b4169ac5f8116`  
		Last Modified: Fri, 21 Aug 2026 19:15:07 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbebdad600f340e60427fd02074e92403337fdcd6b7b618fef0f53caa6d31773`  
		Last Modified: Fri, 21 Aug 2026 19:15:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5330d2dd4996d4907b3a43c6afcdf16c002ad6cd12120b4c6eccf0dabb1770bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe0a4ac0baad69de39c33616e870fa676c59c8d188f3d34489467b92789d6c3`

```dockerfile
```

-	Layers:
	-	`sha256:6f980b8edf942f033e6476695fcfc7cdc2fbb21cf298402525ec1fa0f5fc20c2`  
		Last Modified: Fri, 21 Aug 2026 19:15:07 GMT  
		Size: 3.8 MB (3764362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c63bb5f185c2833f2ea13c65f9870ebce59f458dbc58dcd02b03831bc549a4d`  
		Last Modified: Fri, 21 Aug 2026 19:15:07 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
