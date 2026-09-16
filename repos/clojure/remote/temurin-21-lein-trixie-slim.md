## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:9a63630732fc28cf29f8192fde2f5b0bae8c2c1deb90a78aec93b1663858f804
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:990e75b33bb2b47d4d58bf3cac9240fcd2232b908b444c1d2dd786e52536630a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214532484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddc54deeaf6c65a71ab7513d97d4e26a49e2b1c1ef9c01b9f27d361370930d3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:35:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:51 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231355d473796ccb716d6a6effe36837748bee60b10c6b3248670e5c901fd509`  
		Last Modified: Wed, 16 Sep 2026 04:37:14 GMT  
		Size: 158.1 MB (158120292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5fd7ea7929b1bd2065f97cd059ac0cc0ef1ff3df1fddf67cffd968ac0de4222`  
		Last Modified: Wed, 16 Sep 2026 04:37:12 GMT  
		Size: 22.1 MB (22103900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7d5ac6cf1b8eb0847d6508b393db01ce3325025e9bfca29895c29b12a14c96`  
		Last Modified: Wed, 16 Sep 2026 04:37:11 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185a8262770224337a249b89aa4669e40c705fe4afc3940ae1a387cda13cd3fb`  
		Last Modified: Wed, 16 Sep 2026 04:37:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2663f059c01309165293c722a5e181204a78257ce1417c887780cfab669e72c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee40716f730ca1b2239b43828f1141a8b65b093bdfdd8f3238b0366a2da59b58`

```dockerfile
```

-	Layers:
	-	`sha256:1c958584851731b30657268b56f8a9c80614646d6a520d2e50150590f2ea78ea`  
		Last Modified: Wed, 16 Sep 2026 04:37:11 GMT  
		Size: 2.4 MB (2369201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29bcbba16c2e9f95c131def1afefb6c7332d40746d3c3e01faad99911513d1f0`  
		Last Modified: Wed, 16 Sep 2026 04:37:11 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf03b98b4160172221a8c8a1716a2cbd737a0213a341e025dc30204c816413a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213455329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f267d42790a8ca7630bb99fcb26063592e3ac4f0fb2049f3fbd557828b0f23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:20:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:20:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:20:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:20:37 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:20:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:03 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:37:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:37:21 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:37:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:37:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03301efdbf6134497a415536af340ce119561a1359b1e0563ecffdbba38e0e`  
		Last Modified: Wed, 16 Sep 2026 04:21:28 GMT  
		Size: 156.4 MB (156401955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda58ff3f22eb2d59cc4a758f501d18e08fba385a349acb9c763a186c15fe873`  
		Last Modified: Wed, 16 Sep 2026 04:37:33 GMT  
		Size: 22.4 MB (22378145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f375dcb4e451253717bf16b78cdfb7517eda418e8e22d0a9937c876b5a146e7f`  
		Last Modified: Wed, 16 Sep 2026 04:37:32 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fa01248d92cb2466c716ed114029dff3d8bb971f82dc4f95afa79504e6520d`  
		Last Modified: Wed, 16 Sep 2026 04:37:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:108a5baf6ad344bca5b626ec58d4ba7801382debb5970ada2016bfdd1338d543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82417446bf98239fbf5907e4f2bfb2a45fd705327e6cc69022c0e53a5c1172fe`

```dockerfile
```

-	Layers:
	-	`sha256:6d81f3ca57c5b6001720865295bf95e8254c889c8d59a01e0e6b6e8689894dff`  
		Last Modified: Wed, 16 Sep 2026 04:37:32 GMT  
		Size: 2.4 MB (2368811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42fc9c6ab05388a951ee3c7298c16955f6adf00c3b2d06dbd0e273edea26a6b1`  
		Last Modified: Wed, 16 Sep 2026 04:37:32 GMT  
		Size: 16.9 KB (16919 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

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
