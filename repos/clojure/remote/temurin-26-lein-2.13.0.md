## `clojure:temurin-26-lein-2.13.0`

```console
$ docker pull clojure@sha256:ac2587a5b88953d60ea517966d7a728383885d41d5ba3b02d500625d6f247f19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:09169738d4b84b7569b57c097b7226108617f551b2e1e80ab78cda6f612d942f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167710470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822cd941294e41083e967da5b57da3e6dc911be64244c2d9b75b3e4b66ff239d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:37:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:37:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:37:53 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:59 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a155faab78608a8b4c791f3d78ad3e9b8297c08d06b1c1e7e2fa13b5e5c9158`  
		Last Modified: Wed, 16 Sep 2026 04:39:18 GMT  
		Size: 94.6 MB (94563696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fb26980ce0bf5698187105044ac6033b8d2629feff77805264c6c130f82005`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 20.1 MB (20133771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daae817985e084bcbd3c15b5baea68359540aebcfd5eb705dd6c2c1d90d924a1`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37eb28a7ab3673cd320ebf76eb4888bebd50855752d7be372420f84d2cf9272f`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:915361cb296e16c8e900f1d8c927adb39bc9b047062ecf10e8ee26aefd3d508d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db90d5a82db646589062aa878d98fc13ade289ad4897783afc46d9508c44b429`

```dockerfile
```

-	Layers:
	-	`sha256:82b998dadbe05f67aad17c813b89ee83b5eaef454b304015312639b70643ec6d`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 4.3 MB (4254800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0760ca6309ba8ba1f8a3804d80508ca9676ca9643d6f16b13fa292f370d53ab`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2797fb5fdce99b0b30870874cea9f45ffc76613731a614e188e15f3f64f817e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166397982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b4755546f558e5b231e1b85fd1fe2d3353ed2d2f66599999f4ef314940780f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:27 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:35 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5308e487fc4369853a58ee80e526a052f6387e74f42674a16a2dd46d8d8fb0`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a7e63c222537637ac9400841cb8379562c3998bbb2cf6e63577ae0b3dabfde`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 20.0 MB (19957086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9ed5fa4e7629737311060b34bb138bbe0c33fdb2f2e74a6a33f07d3c944b20`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0eb659c0eccb0b8740ff97e5decbb6c776023e8bf51d76dbdb5bec412f5ca9`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:742da18cf962270d075d01d68f5807ea4f33e0cd5bb057b4e209e1d582f83285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d123f6d89e6049c8142710670a9f0b3ec1e512f3d6f1ce12aec3215933ed2c`

```dockerfile
```

-	Layers:
	-	`sha256:dc4428824dc370ac878fc5dc78df6a8165c8a22802f290e1174660189af9a4fd`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 4.3 MB (4254436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f54ac6b862257fb72cf00d996cc59c5fbbea2fb47d14d06e15c5506aff503bfb`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:214873d3f7ab1092db6d6fed9897d7c3ab90024dcba8edd20e261215d61acaf9
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

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:b451e7303a7c66cf02f88a8519162da40112492ac7b692fdc3589a787a1c74d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c442470a86dda8eba5672175b4239e607d522d94e8fc11e5e1a611bdafb017`

```dockerfile
```

-	Layers:
	-	`sha256:c8833aa5f0f56a83cc8a2656e423c5ede611c2c00184d4a71c0207f7f9950f8f`  
		Last Modified: Wed, 09 Sep 2026 11:23:02 GMT  
		Size: 4.2 MB (4240609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:982ca338373dbb1665235083f6fca46874bf80c9534a462bf73a4df251dfcb78`  
		Last Modified: Wed, 09 Sep 2026 11:23:01 GMT  
		Size: 18.4 KB (18436 bytes)  
		MIME: application/vnd.in-toto+json
