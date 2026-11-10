## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:aaec42512244ad027685eb5f45b54d02ad76bfb469e40e13c1bbf6966561d001
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
$ docker pull clojure@sha256:915174f085fe7b4beae8cc50736f5d55b7e6f3f53286fdd52175de99530e6581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209522801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a7e126ac6dfebba877a77aa920a0b067352a921536571960dc0a5dc652a916`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:40:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:40:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:40:33 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:41:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:41:49 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4238959747b7647e3103ce5549e15c250d5a0f6d2afa0174c6a94a823b0f7cd`  
		Last Modified: Tue, 10 Nov 2026 00:42:10 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622cdc3186135d03adb42c31332abdc13fb696492ff172bbf173e818e1e364a7`  
		Last Modified: Tue, 10 Nov 2026 00:42:06 GMT  
		Size: 16.7 MB (16741100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5653c24d19190392907c0c7ab250d5f4efa23e5bcb7be79874e72ee88efaca73`  
		Last Modified: Tue, 10 Nov 2026 00:42:06 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e1c7e48a94c38cba46111c4c4539b24c9bd0ad6a125dd1516198b2adfa827d`  
		Last Modified: Tue, 10 Nov 2026 00:42:06 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3e79538045c8460111967de72b312536b29b36965db0ea7777a39dfce990be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decafc8129c1d22d0326b0126d0e0c2a5b96d512a3bffb3bb9fdee1410ddf38d`

```dockerfile
```

-	Layers:
	-	`sha256:07baa897271c1a5c9f4ab758297b0620b4ee246dca245e2095afd5a79292f4bd`  
		Last Modified: Tue, 10 Nov 2026 00:42:06 GMT  
		Size: 2.4 MB (2373598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31616d54e85fbbcda3b974f04654386107bdfdfe238c7a24fd1cc20e0fa9b429`  
		Last Modified: Tue, 10 Nov 2026 00:42:06 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc3159b4895cf14b626d2ac50a8af11bb86ca16725e36492aa6c205c2ce019e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208129551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2491cf3d245fa71ce062f28635dd7a548458fadfe8e00a4ba1aab74f270315`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:39:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:41:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:41:10 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ab5499654224ea72b23101458cdd058f61a4d7cf9df632943ab239d6695a29`  
		Last Modified: Tue, 10 Nov 2026 00:41:32 GMT  
		Size: 156.7 MB (156691627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d926739c0ed13130a1d6c81d02c917c179ee8759ef0ec7d30556db222a827a6`  
		Last Modified: Tue, 10 Nov 2026 00:41:29 GMT  
		Size: 16.7 MB (16707751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35dae13659e714b59ca24558a8435acbf06165ca939e30062419502bf88543b`  
		Last Modified: Tue, 10 Nov 2026 00:41:29 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0e2ca54ff9d9edc7481bb4b741b68b375687cd45f99909e60324d9798be005`  
		Last Modified: Tue, 10 Nov 2026 00:41:28 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:84c49848aff5c56a0cc255d5bf2b19cd68aed234cabb91f6f258a78f4c2f3ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04caebb4ebe64770142c76aad073cde29ee515efc85198ed72785c2efba87449`

```dockerfile
```

-	Layers:
	-	`sha256:66f381d8e57037cfcafb32b084219fbea7c50d48109803e57c8dfd7ad6a1c663`  
		Last Modified: Tue, 10 Nov 2026 00:41:28 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:964ccf562dc6a990c881bd9fb32d50b1f6969f5c6e1717f060b50b2efefd2271`  
		Last Modified: Tue, 10 Nov 2026 00:41:28 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e955dd66060b02f143c9b4d2820371b36f4bb44c1af274b79e80b57543e4a4bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212535630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245d9d460e202d5c5e8087c66d9c149b7ecb4489fbb22fe30a4d57564608c873`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:53:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:53:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:53:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:56:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:56:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:56:59 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:57:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:40:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e4dfd74fce827efd180ea39399ead65ff78ebe435d963c4044d95e7490255`  
		Last Modified: Thu, 05 Nov 2026 15:57:42 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a71df8ba6f9ad35f0e7db34f66b4c635f25d8c820df919f999d0bc652242de9`  
		Last Modified: Thu, 05 Nov 2026 15:57:39 GMT  
		Size: 16.8 MB (16778629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b3170757ba665434bcdabf0a697a40c2e61c2facbcca385bf565cbe8acc72f`  
		Last Modified: Thu, 05 Nov 2026 15:57:39 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cd4654ed779928c6ac1ef45d2467b82c112672b7f861caf6bc2e461df31993`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2baebcb3b8a504da1e9648ae0a72b436f013664046dadb8c02c38c82baea1564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa35354bfc93a9d0f5d365f1e405436002d1a45ba384710b0ce63fb0f86d6e1`

```dockerfile
```

-	Layers:
	-	`sha256:913d3b3d47e53880638c9e61e1ed3dd3eb87a2cc227da08b3f31955fbb4facc8`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 2.4 MB (2373332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:029c1094c815c04f16e74e73955a8cd0be921c794db5394a3fe194c4c37e58e5`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 16.8 KB (16841 bytes)  
		MIME: application/vnd.in-toto+json
