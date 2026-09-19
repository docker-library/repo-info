## `clojure:temurin-26-lein-bookworm`

```console
$ docker pull clojure@sha256:eeae4a8698122b7e1164135df5a45b8c10c0ac669b01f28d77642185f1e17e07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:84ff874dce18dcfb9dbb16e24af6327c01bc70b061eb6b5b014ac582de760a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167716174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca08c920277bf15cdbd036443b874dc77f315b43d3d406461377fedf291085b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:17:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:51 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:17:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:17:51 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:18:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:18:54 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:18:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:18:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:56 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97548de8a66f8e061dfd0c22a320e6dd46eae68ae67913a5ed5ef5c23f86692`  
		Last Modified: Sat, 19 Sep 2026 01:19:14 GMT  
		Size: 94.6 MB (94563755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f22857d385f3cb6ef12fc638a05a2bf951456e753b7d9a730bb7ee45f06978b`  
		Last Modified: Sat, 19 Sep 2026 01:19:12 GMT  
		Size: 20.1 MB (20133321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd51cc8522a9ed91a4b7e532675fc5c0273adce79478cab8e858dedb1063b5e`  
		Last Modified: Sat, 19 Sep 2026 01:19:12 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f56a3a1abd672a373667caea2893f232b8bc46d6642002d0f099a53ace0d21c`  
		Last Modified: Sat, 19 Sep 2026 01:19:12 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bf0a916031d09ac66f10cd19c1dc88399c275891b137c375558ba379dfcd9f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c92ffdae1b207a22da5168dcfd2e1ef32dafc81de90c89bc2eed43fddf96c4`

```dockerfile
```

-	Layers:
	-	`sha256:b6e763da2fcca81e16a3181ead05534cecdca6799de152d765ff089c85b245bf`  
		Last Modified: Sat, 19 Sep 2026 01:19:12 GMT  
		Size: 4.3 MB (4254836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b74e8546a5e00a662709c7a4a7d53b47640a9a9f864d622111f751285748c6`  
		Last Modified: Sat, 19 Sep 2026 01:19:12 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:67d3d18e66e58ba96927709fae4a1c14615676d5045d1f2d0ea675c4366fb0a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166403926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aff606cc1f94abac1f13ee596ff8202f5d64512f1774458f851bb05481b0d8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:50:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:50:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:50:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:50:47 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:50:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:50:47 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:51:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:51:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:51:54 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:51:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:51:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:51:56 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:51:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a10c8d1ae5e6134a9b29e827c2ded4afa017d50d5c257e5f6495a9695f6b54`  
		Last Modified: Sat, 19 Sep 2026 01:52:15 GMT  
		Size: 93.5 MB (93541571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3422e8b1ceec874beeb03f40591061e549e20819b831b7ee11060ee65cdf0719`  
		Last Modified: Sat, 19 Sep 2026 01:52:14 GMT  
		Size: 20.0 MB (19956805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ef4dcd0596335cca0600916f7be4136f776e5eec4f7b3eccd15752008ad24d`  
		Last Modified: Sat, 19 Sep 2026 01:52:13 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17836ac08fc40ca3865503c786a1d227a9c4505cac97525dbd885e9d217fffae`  
		Last Modified: Sat, 19 Sep 2026 01:52:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4cc82d523c816b0cfabbf6dc56f0439874400b4341e10899bc0b2b0bca7f8113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb89b47c7847c76af1ee0fcd050d5e8593b94564e43ba840978aa8d2751770d`

```dockerfile
```

-	Layers:
	-	`sha256:568b97fda0c3346e0a5d21b564e3dc13df7fecb88bef3e57480a8cff32753c18`  
		Last Modified: Sat, 19 Sep 2026 01:52:13 GMT  
		Size: 4.3 MB (4254472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89524185fc3f8d5751f429129370a26a7c2d27a56ef384a0dd87339a3fde1955`  
		Last Modified: Sat, 19 Sep 2026 01:52:13 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:86a5597ac9f819ce01d85afbd8dfde885cefb1d7da77ec95ee21079eb312f82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170556769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bc6d65e0cdf61b67c5741d3372e33640eafc7e69ce93327ece2f9aa8127803`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:22:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:22:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:22:13 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:22:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:22:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:22:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:22:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5c0ba1d980dee6b8e75fb7cb4f75335f2fe42a232754ee7c0ef5fd543814a`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684948a2273f5835655d6b125ec5dcf3763d1d06aae5402ab6fa74887e388891`  
		Last Modified: Wed, 09 Sep 2026 11:23:02 GMT  
		Size: 20.3 MB (20348544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42a9635fa493bacbe6716ff9ef0ba254dd170b4a00210c3dfef2bfa13570609`  
		Last Modified: Wed, 09 Sep 2026 11:23:02 GMT  
		Size: 4.5 MB (4515247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ba20619c00d14d7ee0aff7b316e1c4f639472256fde08bfe10a31ff78dcce4`  
		Last Modified: Wed, 09 Sep 2026 11:23:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d07f1a0bb31771b73a7efbe0d97543028be26ed748954c0563994d4e839e26c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a327e4175d08a2a3e88b4d150b9e25ebb512c9fd46842d6056c11dd915999abb`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9851026ebfc7bec77b4de3f9a3b2bb64f0246261e558e5fa0c0fc64db12d2`  
		Last Modified: Wed, 16 Sep 2026 11:00:07 GMT  
		Size: 4.2 MB (4240609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79bb5bde4b3e4386df8259cc3144ec9b9648118c7fece181dc658e8bb394fd4c`  
		Last Modified: Wed, 16 Sep 2026 11:00:06 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
