## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:e28850a3c92b6cb1ce5a9b8aa5155349df30cda348fe6fa1965cd1c6c0d5444a
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:26e4ad669b30c5f38e6bccbb804f2a27d2b406b461beba124d877338c6d89a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145344580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d35add343f76fb145c1ef0cff4677a6bc08f13d8dbbfd47d2696f5fb00ad6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:25:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:29 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:29 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:40 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15fa5c533812c3ed385a0f840fbc02821bb177c0c4f8ff33e87dfae9d1c1e2c`  
		Last Modified: Wed, 05 Aug 2026 01:27:01 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1046dbb1738f69289fb944afd8886e90e14386bddfa3cf3215d1e00357600bb9`  
		Last Modified: Wed, 05 Aug 2026 01:26:59 GMT  
		Size: 18.1 MB (18072035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4045c30cad83fbd3af3a24449653af0ae0dcf640e350acd50d67c1bc23ec25`  
		Last Modified: Wed, 05 Aug 2026 01:26:59 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a60ee308e65672514e4f11b46d75a8eb4d56a7309000d631314618be4e9c3a`  
		Last Modified: Wed, 05 Aug 2026 01:26:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2137b6c5520f75a1f3a34425290f91dbf6f7b9b867addaa874b3359c1dbb8f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2715030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb5bd2360ad99c47bb9e9e818b71527375006934041223f09f32550104ab251`

```dockerfile
```

-	Layers:
	-	`sha256:2af7686a2ff0eb6f67eac933d5a360e23b2575f76cd18f56d000e89b5add6809`  
		Last Modified: Wed, 05 Aug 2026 01:26:59 GMT  
		Size: 2.7 MB (2697264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9503603826ca1906bbc122bdc258deec1e8d53146a62e6b40625ed3002c23c2`  
		Last Modified: Wed, 05 Aug 2026 01:26:58 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:80aa0453e92b8a837f491bcf1b3bc4923f23057ea3dd5d9273fb7de6b022ed7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144031220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2445f956524a3e3c33078bd45424a9ff7604a0a4c8902729e8d8b15efab6e89f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:31:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:33 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:39 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6196e9e5ed14377e58f58c87aa3c339a48001720600ee1a4e4f1c7292745e432`  
		Last Modified: Wed, 05 Aug 2026 01:33:00 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b07c64a288ab6fd5e60af546eddc344613e959827f6e62f4e679d198d6a694b`  
		Last Modified: Wed, 05 Aug 2026 01:32:58 GMT  
		Size: 17.9 MB (17894038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e835a9707a28618ea907b277b18ca611de2ab8f533fcf11f03e57b4f985b102`  
		Last Modified: Wed, 05 Aug 2026 01:32:58 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a43ccd9089c3b24e043207e9a98132a67ef06ca448d539ad8770d8f1f1032d`  
		Last Modified: Wed, 05 Aug 2026 01:32:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7aa4dc1d9a8d796a5317e6629d7d823a3057c05b3b724d1e339a1e58708477f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2fc26135e5b3df50ce2241e33e6e770d19a128fc5953dc0bf38dd47666c8bf`

```dockerfile
```

-	Layers:
	-	`sha256:b1ba744c4ea05239fd9aa9307a2d2528b95f049a21f394468f77232ad0b562e4`  
		Last Modified: Wed, 05 Aug 2026 01:32:58 GMT  
		Size: 2.7 MB (2696876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:455441891b84424eb6b830bb852caec57c829b98662e92c54f3bf0aa5650cf82`  
		Last Modified: Wed, 05 Aug 2026 01:32:57 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cf7442a16996a9431d396adf9ac5f2a03778931e27130c25261e2d4df607168c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148757879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fae77215ad3d1b78b14275b2576878c0a0ae8bd591aa503de170d7479143a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:44:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:46:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:46:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:46:43 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:46:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:46:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:46:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:46:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a4afed690d95682effdb883fbd3eb1aed486e270763f40a0bf7cfc2990345`  
		Last Modified: Wed, 05 Aug 2026 03:47:26 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e524e6c856810c4c7c4cb73c9af6d9bdac3d4817eca40ce9406d0a2a656d141d`  
		Last Modified: Wed, 05 Aug 2026 03:47:24 GMT  
		Size: 18.3 MB (18263858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451dbe0e696d5aa58216ab1f20ace828649a181e933e0126282d52feea7a6866`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7968b84c08bbb8ee37bb3a367b8085d50918924e00cb7a46a428641a75962d68`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08762b70e1e464bb7688d9a17b3981d89a2a15af869f0515b322ce3d85ae8d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48703b689dea54ceeee13e22e2e9b9c79f84473e93c0a9cd91cc99a1a53324b1`

```dockerfile
```

-	Layers:
	-	`sha256:a2faa19e5e360a15929fa9c23b1680ccbd19a2365872bf9b21b834364708185c`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 2.7 MB (2683033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3183865a2458bddd9f8ae65606b5dd74a44d32d8ae3da3be2e9655ffa7d3a13`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d67eed4f424e351e624ed60883c9ee10a6106aaa79da2605d1e231fe594a9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fc4bbd070c27a08e6a64c38e99cba6c7207c0f51da92eff983bd856350d940`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:06:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036c1c2293a8c00db9584c9c37e69e7c0dd3e86f95cdbf4098831ad891c4ce7a`  
		Last Modified: Tue, 04 Aug 2026 03:06:41 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030d6075021958871fcbcfa0174c32300bf132be925b4d5f969968ab0fa0dc9`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.7 MB (17724818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37166f7cc8d4ae3e59bdf14a1a4853422104c4b5b775d96798e30882be6962`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f56abdd71c14774276b7ae16b4d0528ea1f70d79957c92784be9dc3cd1c3f1`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a4df52dc2e73c69124644139bca582c4042f7e7952429492cbbdd17522f8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f04a37896152f8b4bc29e3b50270daa55dce16074aa4626666ea72178c918a`

```dockerfile
```

-	Layers:
	-	`sha256:efd596409ae742a032599088009d307da101c623602e725a7afe328c8b9e157e`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f55bddbd465f1a5f5bbffb8742bf4f79f6577ba1236a5d980fa482d3b5433098`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
