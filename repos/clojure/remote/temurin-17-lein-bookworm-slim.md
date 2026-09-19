## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:0140f4c1efb22fa329ce9b51dda5c3d661e309049150a5904990d1541efe2e35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4cf32c96a77f2d7c7885ca4173ce0cee6b1de606cfe6b79988c90f68103ea86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196656943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa67c84dc4ea2433322e2cdcfe4e173f214af9e782e59051bd73dc6f6dbc9cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:48 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:33:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:33:48 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:57 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c27aac11938b022fa1ce762c1f33f99dfb70811855f7da43df413f7a87794c7`  
		Last Modified: Wed, 16 Sep 2026 04:35:20 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805720979e19a4bf90335918cc7af93a265ad1f6e2ccbc33dbd167af6e1beee4`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 18.1 MB (18085985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a582afc6155f969edb828b6c5b081fe4e3593f3ec995e5ec1b6efc9a747dfaa9`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d7cbc09b24cfdb068881ab67d91036683c0b37675ecf155053d9a65f281d34`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:60762490aad6a004ae2ac3ab92fc49c99b5f756530e956f7de27d8079ed2800e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d289ad92524d2861eb2c280155f2dccdc38ab101870f6cec06d29ce89db5a2`

```dockerfile
```

-	Layers:
	-	`sha256:816713dd10779823debc75f87a84e09ec1052a960dcf6d5fe17665f79d7e20b2`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 2.7 MB (2737574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60eede2297d106ed1360bf414bc2e8b0ecbabbc2154b15684a7ae6fb9f8df16a`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0111bd63724b61f6ea70b8ff766ef8ad96afd859d2dff609fc9f4a375c461e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195193411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f99b6fa9001fe1f3377bbd13c1546de73d8b61363ad51673f52fa6e30afb12e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:36 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:21:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:21:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:41 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a17c81617154af4c846b70db3fda2d540752d3edc45fe96969f00436c6cda7f`  
		Last Modified: Sat, 19 Sep 2026 01:23:02 GMT  
		Size: 144.6 MB (144647462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20dd82dae98d759f1881693e66320994a525262f53a78ef057e69a7a8b3eeea`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 17.9 MB (17906649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4878150486ec67a32c5968d534d8e82b499b87c177c1cee84a8384443c2f21d1`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2281bc9f99c17159c85a7f0034c4427c6e4200be1532439d15f53c649dbe0c`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ebcef67da955d2dedd52b7ca81e8bfb4abcd17c50afeaa9a0358a3adba0afb7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381d2d417c435bc4cce933e13d9360193e19481fba9b0fb67ce132d374e57229`

```dockerfile
```

-	Layers:
	-	`sha256:0a57313cf5759186d9d529fbcdd12216254fe32b44de3dc0d4409173b232e847`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 2.7 MB (2737225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:894c2bda14c609b59ee4924751ad8d5a2295a5c2e2d94f96ee09393484fb9a8c`  
		Last Modified: Sat, 19 Sep 2026 01:22:59 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca1834f9504e34b231b284fe87a7aba62e3180e79c611004a60c16e6b54ed3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200545671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c5019f7eb3fe4d59b7a0bcab7cbc4b646aa4821891627a67377b93d028ddde`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:36:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:36:55 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:39:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:39:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:39:56 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:40:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:40:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:40:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:40:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc80be73e4bf746793cf59c9e1900b2441594152e9e217de5214b3710f48f2da`  
		Last Modified: Wed, 16 Sep 2026 10:40:33 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36906c7f9862e205534f6c1339c60cefc3d08e95f830e70c10f84ee6d4694948`  
		Last Modified: Wed, 16 Sep 2026 10:40:31 GMT  
		Size: 18.3 MB (18279315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd7a1fe680a29990f253e4a1f11d9cd057b94cd85ad22df243bebcfaddc0c9f`  
		Last Modified: Wed, 16 Sep 2026 10:40:30 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de3b7288bbfb3febe85c5c266d929ba75ea461a2107b3068450cb687f4ae382`  
		Last Modified: Wed, 16 Sep 2026 10:40:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5d0a0baf4536d155f766899da948a2a7e8a5b416d4586d89928403d00e9bfd21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30cbc0a1661c5c13003bf70e79f89748601c48d18855653b011490460756b54`

```dockerfile
```

-	Layers:
	-	`sha256:c2f570a3ab960bcdc2d15af0f6eb4a875d852c5f38785d7f291bd232ee327f24`  
		Last Modified: Wed, 16 Sep 2026 10:40:30 GMT  
		Size: 2.7 MB (2739407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6911d3a857bb7689c992c47d718624f5b6701e74004011819a859967ab3ee01b`  
		Last Modified: Wed, 16 Sep 2026 10:40:30 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
