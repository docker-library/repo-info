## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6b1269d488aa7f52127cdcbb39025e3e81e8bc79f9b27674a22707c428f25ecd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:04935003dfe23afe67137ceeee4b05c4b72bbf463d4504f713d914b999239980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145403552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb87eab0786c6f85e325e14dd6f84c15147aa3c9d83bc3e0edf6741b2be04797`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:02 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:18:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:18:02 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:19:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:19:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:19:06 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:19:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:19:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:19:07 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:19:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f619836c928ac9506787d74fc1fa30a856b652ec8f5f1ffd43246cbf217d8c3d`  
		Last Modified: Sat, 19 Sep 2026 01:19:24 GMT  
		Size: 94.6 MB (94563737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d9a98939961217f3221f3be6f3ee94b355b0bdae10108c476d2f49b1fdf7e2`  
		Last Modified: Sat, 19 Sep 2026 01:19:23 GMT  
		Size: 18.1 MB (18085747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d43718ffce91ed6e10827fc4d2cafec533e45ca618929b8b4b2e8d15ffb71d`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0f65522a3c2c361b47e4a4fe90889701febce8ad2fd4191c465a45c3166f79`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4aacef3d4f1c96d78bc0b77d873a5c1788cde425ed1936ad970c367883af923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e18117f039da96848bed232e439b845697b01e59587ea4f5726c1ff3dcc3d9`

```dockerfile
```

-	Layers:
	-	`sha256:57feaf3c3bc63b35bd649b5d4d1bdf81036afc86b18166f31c530c8be53560fe`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 2.7 MB (2702505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef9c7122eb413ebed292e88702b438451684299b3a47cd5323d2e97939efa77`  
		Last Modified: Sat, 19 Sep 2026 01:19:22 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f39139513d09718fa2ebec78fa790af04edce57cc7b4b1fce265f86760d15fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144088123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bc7d84ae8b9ac53f8bdfe60951e0af46baf2b2c0995a549cdc01f7484a79e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:50:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:50:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:50:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:50:48 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:50:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:50:48 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:51:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
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
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f087d236d3946b162383f6bc7782a22bafedfe6cf070b2b7fee1215831eb67`  
		Last Modified: Sat, 19 Sep 2026 01:52:14 GMT  
		Size: 93.5 MB (93541603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440f0f605f2b105bc1a3604eb64e0d79a0c99eb3541ad4d423effa9d5e40ad9e`  
		Last Modified: Sat, 19 Sep 2026 01:52:13 GMT  
		Size: 17.9 MB (17907205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e51e6cb37b613a8f8fbbc0454401ee9a3f4f69837a50ce05de23a668096354`  
		Last Modified: Sat, 19 Sep 2026 01:52:12 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab20e94e8de6c8c0e8ad1190f6ced14053a37ff31e22210144488b1abbc40346`  
		Last Modified: Sat, 19 Sep 2026 01:52:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:82c33c5baaf3a6a8723915ced72cb56950068eb157d478fbd85ba55168b5a127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989db9e2f3e61340ec28731465d46c18201ebf78d92952fd1c46daee5b7481ce`

```dockerfile
```

-	Layers:
	-	`sha256:22ef20539ec3aacde9cce1758430f4a680fb2e47d2ae69ffb18413f83a1508ba`  
		Last Modified: Sat, 19 Sep 2026 01:52:12 GMT  
		Size: 2.7 MB (2702117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0ce57acbb2159d2c7cf91888901d7988d9ffabd1638fc13608cb7bc37a3d8d`  
		Last Modified: Sat, 19 Sep 2026 01:52:12 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:06df8a829291964d9c29200ffe29341430727cca8e5fe9e69530ce2b2005a802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148229246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8460d04ebbb6955810328f461759b1f24b945db35438554312ca7d6a7e47dd9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:26:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:26:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:26:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:26:29 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:29:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:29:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:29:19 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:29:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:29:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:29:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:29:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb0f7eaa32d2add0fff064c32d84dd30ce45330b9285ba34d961aeac4ce7fec`  
		Last Modified: Sat, 19 Sep 2026 08:30:00 GMT  
		Size: 93.4 MB (93350809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f09d2ee00ba5a2359e56a6f1206f600a3d115e8034f486ece83874074ff4977`  
		Last Modified: Sat, 19 Sep 2026 08:29:58 GMT  
		Size: 18.3 MB (18279231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787cb0be79edb41a66a481ceb69afee974f29e072aed969cbad019b2744cb2f7`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88249752a65d9ff483dbd300a3d9000e4edadfbdd3eddfb0c53fc7fea3ed003`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58e5a4a76796581bc282a299d5a54b6fbf80a25948059e5a291f0231a3e50844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7006868d77d935726902cdb3c04fc000aa36b98938fe950a0c35f666a6a8a84`

```dockerfile
```

-	Layers:
	-	`sha256:304b83f8ec028bc1296157c673845142a7ccf094271d154f5083216d9fd88cb0`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 2.7 MB (2688274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e6a910dc6264b6c81db6063de7cd6620a12e7ece9f9c26832c93d184f541b19`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
