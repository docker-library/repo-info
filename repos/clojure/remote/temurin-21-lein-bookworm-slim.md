## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:02b0f57daf8492e21b43705dce296e0bde6e0a44e81b4f76134328e40ba10953
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b92b7f605b99d92e50af8573d627ab95624779ebfd309450c383428b26511a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208941913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81352d368d765400c1cfb966c558adee7fa226cefb38e8af019c7ffce59c1ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:29:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:14 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:23 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9512f1107138a2b41e17859bfd65f27f8b4b0cb0c6c215df42e0c8bb414d7e49`  
		Last Modified: Tue, 25 Aug 2026 01:30:45 GMT  
		Size: 158.1 MB (158120318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2680b176c95747c871e7baebeec53911f7bd3a39b22a237298e5c823fb1772`  
		Last Modified: Tue, 25 Aug 2026 01:30:42 GMT  
		Size: 18.1 MB (18073299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d76731d41faa4e6489c50f2c53e18ab9b3300f96a6d8c22fb40e71fa75f393`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaa7f56fc7cfd6baca4ca4cf13a8ec7d12be44ba0c30dc6990378254e900429`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3b2c62b2e40d11064157db4a286c0afd8c564b8dc0c259a677e6b2f18ffd672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0739caca7018a108d3953a727888c6d3c41dc9ceab721acca458bfb35accaa3`

```dockerfile
```

-	Layers:
	-	`sha256:01b8e1157b0f93b9547c8baefc81b3db1dafca0d0da0cb1ba96151cae61d696c`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 2.7 MB (2739426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1400cf6c61c6b5ae9a77b2df3d7fd7643b2fa537de18b72f20dfd6d4bb78fcdd`  
		Last Modified: Tue, 25 Aug 2026 01:30:41 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2a9ecc48fd58e5c1839a8baf7207c5fe7be56be4b833498c34f256c64dbed9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206941439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f164bc3e1481ddd7e3040083752e7925a242a899b1cce40f25906c4465ea463d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:33:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:25 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a683924f26493393db3f973042423034b88fc5952737c2b687fcaeb808abef78`  
		Last Modified: Tue, 25 Aug 2026 01:34:48 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974b0052f4f5f83320fe1b19c68fe02be2b40a583ef0a9afc401a1b7edea7379`  
		Last Modified: Tue, 25 Aug 2026 01:34:45 GMT  
		Size: 17.9 MB (17906624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2e370f32c0b39662537110897116c91354c67d649591c6f880866b0370ab34`  
		Last Modified: Tue, 25 Aug 2026 01:34:45 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7935e27fb780010ea646ed46e2a562736ef7fe56dfbdec30a3d1131c0ccffed8`  
		Last Modified: Tue, 25 Aug 2026 01:34:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fd75672d0522d333cb07d843c285422768f10ce7e25316a26cb3f24c352508c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23df613dbdbc74516022db123be6b02936f7b6ea45f54fb3d3fcb17e1f1e1f14`

```dockerfile
```

-	Layers:
	-	`sha256:4f10b046d935590b0c6bca7dc3a962c93e7392a583c2326bdb3eb84316ca9b68`  
		Last Modified: Tue, 25 Aug 2026 01:34:45 GMT  
		Size: 2.7 MB (2739041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68a017050c1e41d4eaeb358aaba930ba203771c4632e15d68ed8dad4ccb66f3`  
		Last Modified: Tue, 25 Aug 2026 01:34:44 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db893538e21a297b5bf8b0ce8456fdc1306f3c00e7bda8d588aada84f91da43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213146198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6ae966f362cde7e49140421ee32e0ebfe8904ce19194628aa2821e64a8755d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:29:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:29:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:29:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:29:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:29:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:29:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:32:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:32:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:32:53 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:32:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:32:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:32:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:32:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee164f813fe2e3f1d06d318d0bd519415e0f19c7fb189a963169cf1fafc8f3b2`  
		Last Modified: Tue, 25 Aug 2026 08:33:41 GMT  
		Size: 158.3 MB (158274894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b75f90ff46212801030087ae4a55dbdb13a17afd1991f013a172a07ec6d25a6`  
		Last Modified: Tue, 25 Aug 2026 08:33:38 GMT  
		Size: 18.3 MB (18279169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db51e9eaac76c074df8ec281a30d84f5cc83d5c37427e41f0419b448c625b859`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a456a1ce1eaa0560c3b34cb8e66026ea8a57001625316474541b9a069b89e08b`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:248413f448498a0e5b56ecbdf13731f209d96f010b026e57dcd574695a88d49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63f6017e2bfd35a72cda8958989adc7cc406376eb39cd74413eeedd7580235f`

```dockerfile
```

-	Layers:
	-	`sha256:dcc12b9b1e0c31bba7854ecdc33e80404704ae8a9b364faa7525d2c3c1457195`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 2.7 MB (2741259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf22a0cdb5089586936bce735191487b4f5c299946bfb07c8159958f7d41da3d`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
