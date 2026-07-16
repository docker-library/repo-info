## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:24ce23fa86642345072e8eba11b5ff2d0ea7666f76b79596f36dcbfb9841a271
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

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bdd4b1c035c57e2a41385280c38a6523c7376aaadaaf6d0948d12efeecd198c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219027726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db3106711b6d9cb90d6e060800231150b61bddfca2283ab44cbbe21e9c1b32a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:44 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:44 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:32:50 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:32:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:32:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b68c1275398d4906a0c22d34d4e1b4002210d5d2d0b568ade5ed629f6feba`  
		Last Modified: Thu, 16 Jul 2026 01:33:13 GMT  
		Size: 145.9 MB (145906354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa5b9f4c81213c8cbc837c64744afa422a69eb1d3bff3bb3beb309b9c4e53ab`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 20.1 MB (20108309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c836fc966980e604f9afdfbf9e8e24e113ecd6bd57dd0445db31d362f87ae69`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a820d896398219d52899170ee1776e06fe400e40cfd506140fc98e10203ab6`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:deeb17118207402323cf22b4d7981e3e119a2ae4ac30236b160cb9b1306d1773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f05cff1259375b563315c752e2411eb4d18719deec3e8c76f7581b31dcd562`

```dockerfile
```

-	Layers:
	-	`sha256:874031bc28fc0300ddd4f430fc8eb671fb912be926cdfdfd31769de6194c7788`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 4.3 MB (4284054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaeaf98f2db8cd7c4fc7b2a04ed009fb2063bd84325085de6df33930c38fe4c4`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:631e1c63e9ebaa3dc9a9d413d69f7ec1d27e15f8d789d79c61dbbec937c74345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217574247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93478666237635e1f0259582fa8c8813143bbf1f005aa889caba5d58c9e02152`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:24:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:24:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:24:00 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:25:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:25:10 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:25:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:25:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:25:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:25:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a9eb1b102e6b55fafc9bd453ffd43014f68c2fbd7e8f29c807190d2ab6a63f`  
		Last Modified: Thu, 16 Jul 2026 01:25:32 GMT  
		Size: 144.7 MB (144724314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba329507c2bfe021f9d9e2e85dcdd2afa721190ab0c0c46928e348d757cd0c7`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 20.0 MB (19950603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1fdfbc97f1c24eb3ee4058accd2a7b1890a28d59c00054c022dcdc8ff24cfd`  
		Last Modified: Thu, 16 Jul 2026 01:25:28 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7182b96fbbf39c59159efa7e0fedbc047aa94bb1ba9c8d0f9d3e796a14a78c`  
		Last Modified: Thu, 16 Jul 2026 01:25:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5ed3c53807c057e8670681f04e952282cc0f94cca00f2d7d7758caf39a7943e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5737895bd9f087b9d672d027d06d499f67f5635c77c61ed912c45d6a879b7a90`

```dockerfile
```

-	Layers:
	-	`sha256:fec9d244123afac1cad9e3986bb740bc14497644d00383358a310b97154133a9`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 4.3 MB (4283669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fec470bd7f4c190a5ab7c3899c79eb39219cfb08c229ee44987acaa274f8fa4`  
		Last Modified: Thu, 16 Jul 2026 01:25:28 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9610a41ee1c776765f5f54829d68648c8059385476697b6d758853f9a7a8cec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222955860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0185c535ddf6b224b378f0ccee9e42678425250abbed18791e1688acc6b8053`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:37:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:37:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:37:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:37:29 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:40:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:40:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:40:27 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:40:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:40:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:40:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:40:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c0387545f4e8fab3fa23390ec6d4d8afcb8b8c3ffd2d40a6dd23dce7dbf716`  
		Last Modified: Thu, 16 Jul 2026 02:41:08 GMT  
		Size: 145.8 MB (145766197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014d3cc4610b99076910cb942d7d865b04179516d96eafb30b158a8511955d1f`  
		Last Modified: Thu, 16 Jul 2026 02:41:06 GMT  
		Size: 20.3 MB (20332177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02364e3706b10779ac9aa60c87744a3acd64ccca305e1225e35867db80800b49`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877fca7286f2fe7aba4f862a6932f536e075894f5b75073cfc59afe10ae434ad`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:059c0ad1ae54a7ffefdb29324c66ed321d6447ba65ea6d38ab14f075839ae716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f604241266f30a69fb00a5310d4dada1a34d449072ce261b2779a08e7e431ee6`

```dockerfile
```

-	Layers:
	-	`sha256:299a6bfa0e481673554b805a28d791c0ef698df39805b5a52eafca7e9c11b311`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 4.3 MB (4285915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b38f5da4726b02aa255726883538d5ec59648d015a5f0f885a94b9f50b89e33d`  
		Last Modified: Thu, 16 Jul 2026 02:41:04 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:6b47e0cd8b91473221a0fcffb2a37e3f6806fc9183956a890306ad9f6a8d2cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e11c06f69c4c314a227ab453542e175c0933b869df6e0b8d03e3f31f716bdc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:45:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:45:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:45:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:45:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:45:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:45:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:46:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:46:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:46:55 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:46:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:46:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:46:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:46:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0bb9f7e3e7a2951d693dc087f3d2227348c6115243f26c554ceeb44d9e4339`  
		Last Modified: Thu, 16 Jul 2026 01:47:23 GMT  
		Size: 135.9 MB (135910475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c200623671f1050fddfb282ac2f4c84d7756f338e6049e869a52d7fe4a4956`  
		Last Modified: Thu, 16 Jul 2026 01:47:21 GMT  
		Size: 19.8 MB (19770296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e71e9eea503c096d4db478dd9495cf420e9d6629a33a8962a0945637134fa1c`  
		Last Modified: Thu, 16 Jul 2026 01:47:20 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee75af5e240161c9d0d92cca33280ec96fd19f4fcc4ac2b191636de800df2e12`  
		Last Modified: Thu, 16 Jul 2026 01:47:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4d5936b8c4be2af2e315b0ecb20cd4be03532127b4cb6ae3c830efe53feb27c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38157dca24a725b40d7fc2216553872f3eb5697910b29700fc4f0bdcbb2e3d8b`

```dockerfile
```

-	Layers:
	-	`sha256:e5bdf9adbf206a7f590d6bae5ff36eb996f207ce088d4b92e4297ee4ee525aa5`  
		Last Modified: Thu, 16 Jul 2026 01:47:20 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea44b3c2df42f3910a9054dec5db0be3aba1b1453b47e7ba98cc914f943d6927`  
		Last Modified: Thu, 16 Jul 2026 01:47:20 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
