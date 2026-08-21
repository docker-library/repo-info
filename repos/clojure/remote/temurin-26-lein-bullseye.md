## `clojure:temurin-26-lein-bullseye`

```console
$ docker pull clojure@sha256:8ecd31a7c88079d4184df2c2d3c20c91cf212b40f1d4f090645ec01fa7613430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2e87292f4fcb5f5403b5fb837e8e66b581fac6ec12d9075c22b0c4eafb851aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169796703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73ffb95bd656f74a2e1233c315f1641cd0076bbb18b4fec4192eaede9dc42c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:22:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:22:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:22:05 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:16 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e616c66a34b55854fe5d85bde5e7fe8a36a465197a119ce4fd56f2161cb8198a`  
		Last Modified: Fri, 21 Aug 2026 19:23:38 GMT  
		Size: 94.6 MB (94563771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785b61ccc44186e9307c63580cbcc8a0e413297555f83856855622b25bee7a07`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 16.9 MB (16940300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc23ae9bcdbeb63a9af58dcc3ed701cbb6f8fa7da57643d18de1a01f624cd262`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6af5fd36afeeb0e3adc1f5d8ea055e3539a2fc9e279b864b3ccc71031faa6b`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f0d726d27a15e34b369a99ded2bedca83e73c6664f7ab754958f3d5ab72f09ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4488854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202126c3fab5383e372126a1bad0c664da681c20d42f692578b64ee62e9bd62b`

```dockerfile
```

-	Layers:
	-	`sha256:00055aefd4fd9f7e29dac31deb5d52750e18361766fc21ca6de4679fd00bb0d4`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 4.5 MB (4471123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f549969cee78ab4dff8e595e6bbed120219fdee5c5e5dae9585bfad3e77bd9c9`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:493505ae4040e59adb69ce9ea4bbe12dc49e29f65edec77c2e2dd689aeb6d05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167248818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f234f525f109c06536fe17bb02130487e4ed4943efbccd2b967087cfee7efc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:05 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:12 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eaa65eaefb4b44f86e23f341307f27eaa0ec6a555b9002c708e256a69bde82b`  
		Last Modified: Fri, 21 Aug 2026 19:13:34 GMT  
		Size: 93.5 MB (93541568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353e47fe5df72851798453cdd44b73267606ba7dc0387a1b9c18c4b1623b035`  
		Last Modified: Fri, 21 Aug 2026 19:13:32 GMT  
		Size: 16.9 MB (16930734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0914114a3f337ecba1e0572b4ece6e262fca1383de875bc7b34d6221801b0d4b`  
		Last Modified: Fri, 21 Aug 2026 19:13:32 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762914e4da7bcd4cdc103078df1fbb9494cf8f615b91d398fdcd262f4ab51b4e`  
		Last Modified: Fri, 21 Aug 2026 19:13:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7062a412b24c041318eeaccdf6ea608935be7ab9463d56ace93288c37319ac6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4373b1a606ea0e2abf60954d01b874adac64029521111fd434edb11464f9a27`

```dockerfile
```

-	Layers:
	-	`sha256:cfee4a9693f82c033e4ce49bd4070e68a41578188b672188d61039a6e09f07fe`  
		Last Modified: Fri, 21 Aug 2026 19:13:31 GMT  
		Size: 4.5 MB (4470094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d239065d3b7cb2a0c5a122aca3d6d59f3f29ce8101b56fced338681b6e44f147`  
		Last Modified: Fri, 21 Aug 2026 19:13:31 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
