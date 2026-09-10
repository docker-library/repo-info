## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:759b4a762334bd5c55f9c49cfc5541d1916f4432b57b4df86fa82fab94647ecd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:74dc0aaa598be0381ade11782d668d4b548735eedf81d40b0dda3c4dddd695a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.1 MB (212145100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9421493056c6d7fbdb0d6590243b7475c1a1a7e08b648ab617bc7d69ba9f5673`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:26:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:26:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:26:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:26:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:26:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:48:36 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:49:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:49:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:49:50 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:49:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:49:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:49:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:49:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd8e2b1ea5d16797e19c87df1118a054baaec84461fa32f2a7b31ffa0d8aea`  
		Last Modified: Wed, 09 Sep 2026 03:27:45 GMT  
		Size: 158.1 MB (158120297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06317d7a0720f0a52f14ef01978bde18afcf8136d5765cd1964dd5102db33a90`  
		Last Modified: Wed, 09 Sep 2026 03:50:02 GMT  
		Size: 19.7 MB (19716526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e03b24238d3096acaf4df3a2de3dde81f5b87965cfc1892b4b4f15080d35ff`  
		Last Modified: Wed, 09 Sep 2026 03:50:02 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80296a69464f3e84461e2c1e629ba0cc31f817277ff6cf3810e843154f030ccb`  
		Last Modified: Wed, 09 Sep 2026 03:50:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4411f53e2e6a19fc8825b348fa7109244ae887c8d3ec8b1d5c529f2a9356e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acacc62e1859c796815cc5adbe51057305ef9cdab2c4223bba2ba660ed1af69`

```dockerfile
```

-	Layers:
	-	`sha256:87b97449f1dfbd41ff265cee3f34995b0aacb01d81ce060dc187f294dedb36e3`  
		Last Modified: Wed, 09 Sep 2026 03:50:02 GMT  
		Size: 2.4 MB (2369165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:520e99a2c9831a454b19a58bbbef4edb363e318663fcddf32ca709944c6eafb3`  
		Last Modified: Wed, 09 Sep 2026 03:50:02 GMT  
		Size: 16.8 KB (16798 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:241ba9b81f708b8cdb54f6840da4704e7c6a2b678bf6d0fa47843cad1a6b4db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211114300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d330d8d7efa38fb259528baf571e374783e1ef12c56271d851ed578fe2bfd82b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:00:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:00:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:00:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:00:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:00:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:00:00 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:01:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:01:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:01:19 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:01:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:01:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:01:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:01:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcf02c724a44fa6bfab5082318d5435a88e501184bafebcf16cb3f0e4885288`  
		Last Modified: Wed, 09 Sep 2026 04:01:42 GMT  
		Size: 156.4 MB (156401928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1e1ca045c86842805a9933f75a27b391399172c5730ac4b6115a7300a1084b`  
		Last Modified: Wed, 09 Sep 2026 04:01:39 GMT  
		Size: 20.0 MB (20037178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785cffcc70cddf67e2f1fbb1069c8034ad92874bd9f55d704c85c1503eedf0c`  
		Last Modified: Wed, 09 Sep 2026 04:01:39 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bac574cfa5a4ba14b02ef9f7a1d62d44fad5a3f5e04031fa2b69ae27d9e78fb`  
		Last Modified: Wed, 09 Sep 2026 04:01:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d50e12e10ffa9f1aa8536bb6179b3674566e144fe8153176df76f3ff7190cc51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1979a8154809bda979d03dafbdbbd587bf81d8aae21724c756e0850b9666b11`

```dockerfile
```

-	Layers:
	-	`sha256:c7f293cd91f940866af50de70d73c821caf7391bee3155219d22e4c6c864c035`  
		Last Modified: Wed, 09 Sep 2026 04:01:39 GMT  
		Size: 2.4 MB (2368775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88b429a7f3c00738ba7adfb6a60f3072a04177a698a056a7f3db33f7e29914d1`  
		Last Modified: Wed, 09 Sep 2026 04:01:38 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9e50528e3e6a3bb35970d72c6e540c1cdbe06a908653852264479e4bce8b9f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216396308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd01d683b2b555b4d40050c85d262144b290cf37349bf3db968dfc1d94e1a3e2`
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
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
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
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e29883f6912a906f7900dbbb0bd6d0b1488c843990346efc085541c616dfdb`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 20.0 MB (19990340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd73c80da1f6f0cd156d8facb5c3280d327661f6c2d39cf4381bd7706ecf8b6`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de3ad394d8b66680181b938f2ef1f369e25dd9ceee0e7b5854f1d2daa56cc54`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e6cf233d9eb415e50caf0d49716661a183b1623b7bfe2d33af7743b79e2feb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a668c9f39f95faf665c16b5a2181e1b5f880556f6d0952c9f71da5b23b164b0`

```dockerfile
```

-	Layers:
	-	`sha256:8c5b27e05fb15e45b0c2cae054b5304a44b51288b6008d91d2ecff5f86aa8cc9`  
		Last Modified: Wed, 09 Sep 2026 11:10:17 GMT  
		Size: 2.4 MB (2370145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:613f7cb28b72faa6bd0922fe77489b7d886383e2c63b60f508ece05767106a1c`  
		Last Modified: Wed, 09 Sep 2026 11:10:17 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
