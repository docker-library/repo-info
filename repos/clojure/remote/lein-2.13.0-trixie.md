## `clojure:lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:7d59647f70a20efba7db53dd7a5932fc335d25df0eef3f1e3f85ce89018129c3
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

### `clojure:lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4835f34d62625e93cce34b6bba342ceec329b6e6209ec65e59fb39ad698ec523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165298455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9885ae7d2c929642cd99f6ab2dec7a9d02c8bfb75b4b1dd70b40edd5258961b1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:24 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:33 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5badf3325079d8973586bbceff5c606beb0ed945015ac532b4c4bd193d72de`  
		Last Modified: Thu, 02 Jul 2026 05:55:53 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd69c9e404044258c4b9897991360248c85d595365132a1da9167c32ab49a4`  
		Last Modified: Thu, 02 Jul 2026 05:55:53 GMT  
		Size: 18.9 MB (18891029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bafba4ad96150bc97c952f056a1d81c5c51cba06bb5c87097fc1fce23ba5a7`  
		Last Modified: Thu, 02 Jul 2026 05:55:52 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e798acf86c6dfabefd689cc194c8c9acd5248ad81360a99213f0dcd934497903`  
		Last Modified: Thu, 02 Jul 2026 05:55:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:94d09b6e52209410d4e7f2a70790897dcf3294a0805629470bcf13028d8697c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09797c0750a1930d5ee5dc92b4196a84b5e15027667541b22fdba223e3cd1c79`

```dockerfile
```

-	Layers:
	-	`sha256:47b3b93c8c4de6d7f4c5061e13d00372a5b9817d59670f158731e6cb41c99d7c`  
		Last Modified: Thu, 02 Jul 2026 05:55:52 GMT  
		Size: 3.8 MB (3785848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb6a606f3154012cc4fb9a0acbc48fac328fb24d252040db469ff0a19d23a57`  
		Last Modified: Thu, 02 Jul 2026 05:55:52 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27cb17bab562ffa5d5828c4e0d798e56aecba615d5da2bf5f265b2c5b90c7af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164576012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45637747bbd6fedc597ab46c49827c286db6b76fd570af56d9782706ccee80f2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:56 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:56 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:56:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:56:11 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:56:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:56:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c9d52d90742a7b5502d9cb23ab3e7eabb2e3f5a32306fa6f0bd7f0c23d9b`  
		Last Modified: Thu, 02 Jul 2026 05:56:33 GMT  
		Size: 91.5 MB (91542268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3560c138c9cd18cd6091aa819e8f6b99dbb247b4335d8cd9bfe8e366a85afd`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 18.8 MB (18839706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900b98ed8eb0a02f7eb6f9d2a2252e92825a9f6c50837eae97e2ce3fe79b0605`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e42692bd91cfc9c9d1c092fb2e897a790ab5b3ea40b24742eea20ad385ccbb`  
		Last Modified: Thu, 02 Jul 2026 05:56:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:60371f68c8be92d037a91ad7e2e834c0aa86c7b44db0a26c8b94d1d5dc032433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ea61fce27f5583ca65b3ba0561128f6c5e5a5485483d1e2967d026acd6ec8e`

```dockerfile
```

-	Layers:
	-	`sha256:4b852b6e5338280439cb040f8303a07788c8960eb85895795616a0db41ffcff5`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 3.8 MB (3786109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80664601c8598dccf5197f785814ce2fdbaaad0fc97bc0597e4746df1b27ab29`  
		Last Modified: Thu, 02 Jul 2026 05:56:29 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:167e3aebd9705257acc7aab94f4b29f501fea8539ce092a825de04ef427058ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168504227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505f24d0eee9515c97125abc3e2f4a8a0fcc48fa8774385b1f160f380163fed0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:37:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:37:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:37:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:37:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:37:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:37:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:41:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:41:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:41:02 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:41:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:41:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:41:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:41:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73c0fa4c2193363c9985c22b8523d5932c6de0c0c40270ca09e8f646c77277b`  
		Last Modified: Thu, 02 Jul 2026 07:41:44 GMT  
		Size: 91.9 MB (91914005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ed309f8396386221ea380a3bd787a0765c482e86c65fe737e74e08e4c3535a`  
		Last Modified: Thu, 02 Jul 2026 07:41:42 GMT  
		Size: 18.9 MB (18936486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4dbff5b94ec30353e510d2fb9bd761016ec765717f76876e5ba77c55006cf6`  
		Last Modified: Thu, 02 Jul 2026 07:41:41 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eca4efb5308a7f7bc0966c7e874b3c5bc33bf497aa5f594f46e34c3bd869d9d`  
		Last Modified: Thu, 02 Jul 2026 07:41:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3e8ded2ff1a69833e3760678097a4714c153edf2f38e044b6f673d7751ba4ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7317bd9f610c345479a2f5c3eed796104d5702d925a87b73cd6b3af9cfa9d605`

```dockerfile
```

-	Layers:
	-	`sha256:8da5a86d778342ea39a4eccd8b10aa612ed01f4afa3aaee748bf468b0e4973bd`  
		Last Modified: Thu, 02 Jul 2026 07:41:41 GMT  
		Size: 3.8 MB (3770172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c61666508f6ca316cd9382320b4327d2877bd5a838758c11657493c3fc01c776`  
		Last Modified: Thu, 02 Jul 2026 07:41:41 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:897624d45699c83b2e3c353619160d8a2bc4510c87c6e2b219e1378bf46c025e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161244270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67281206fe2a325242c029c2d2c88dfeec2d7dff006c42ad84f7d07c12a7744b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:35 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:40 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:41 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ebacfc2e1487a8c3b3e4d3281fd8df78297607b7af30d131780ccf3e748bdf5`  
		Last Modified: Thu, 02 Jul 2026 05:58:06 GMT  
		Size: 88.4 MB (88420355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce825c965523d07578389f55a6b0a45d6c325bd4b9d3c961064a65ee09242f2`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 18.9 MB (18922230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4c6ff3d20254673dfe2adb99f0e99963e0f62ca1f1e9f9609b009f8dee4038`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b9f09eb613981ef9d98c4101e9d94c429d85c8562c471b92a0c164c4c6f9e4`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:84343a710560ee136b32b1a11d413df2017654d77f12626ebd73efa790779400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a12a54a3fbae4faa9c068b108fb0ef81bbf7762c7bad7a96822a210339d39e6`

```dockerfile
```

-	Layers:
	-	`sha256:614dbc65f8c7d0fede2d9b579c253efffb45a3d095ef146517315407c807085d`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 3.8 MB (3766837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:632a3c3f2cbb7b3af2f2c6b0363a0d1b9d43158dd5714a9eabd2c9cb586550e2`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json
