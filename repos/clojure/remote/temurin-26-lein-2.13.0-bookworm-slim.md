## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:123a666d1c0e2bd7db9b470e3034d06e74a6ea3c567f80068b62c5f6ba4487e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:630f6b7327d2436905ea00ba0800a6f475789c80346e1e01cbde7ca4292db480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148222886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c387c64bb19202dd94bacde3b9374b892db36fa710d4bf2a89d79b5cfd9e2ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:32:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:32:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:32:50 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:32:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:32:51 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:22:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:22:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:22:47 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:22:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:22:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:22:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:22:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca4b2377bd7f858a9eaa6c9fb71c0fc3007246e96523f3f7abc3de415ac8e4`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e87c416b89593958d11b53c5261f255a8cad45d779111923e8d83059344a0a`  
		Last Modified: Wed, 09 Sep 2026 11:23:10 GMT  
		Size: 18.3 MB (18279953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7c369a20de1a403340bd5f6b077e322f9f7c2586a928a3dd5dffd3c7296237`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb08149e0d2f01a7dbd5dfb19135450591bfc652fd508e0d4f0af12fea28714`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13304314f436a0f5af040cf4035f6cea1764e3598af34653500094238035d0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6364b959edce64bdff4836c19566b4bc3887b4f889b41b8eb041412d631be925`

```dockerfile
```

-	Layers:
	-	`sha256:162e9813369644bdfde1f9cd681b5daa50aa803d93ffee5bf887ecbdd034e200`  
		Last Modified: Wed, 16 Sep 2026 11:00:24 GMT  
		Size: 2.7 MB (2688238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bf4bfb919648b8baf4241f759f0a63fe2c8fdae9cd1460c86308918938bebe3`  
		Last Modified: Wed, 16 Sep 2026 11:00:24 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
