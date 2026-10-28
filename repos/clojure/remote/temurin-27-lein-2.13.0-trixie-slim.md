## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:448dc9c89ccac7a425cc95e7e487b6475dfcda26f464f3d8efddaac7a52b647f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c9afa7443bcded5fc3d4ecaa6ce3262ee0a416371629145d2a312534bedfb7fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144734990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e18508f92c5a0b89e2d9d0aeb86060949e77a3abc8ddd83136b6e4b5098b91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:29 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:29 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:17:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:17:50 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:17:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:17:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1c90e6e106fbae085492d3ddf2c39dad6a1abc86c17df275bc39b93fdadf84`  
		Last Modified: Wed, 28 Oct 2026 02:18:10 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4dea567c57b6acb954cbb141d369b09db946f818dda293561753f828d84d65`  
		Last Modified: Wed, 28 Oct 2026 02:18:08 GMT  
		Size: 16.7 MB (16741616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce0d3c4741a2e3776789dc848db7cc9792ce3aebd4660f824208bd86e4f7a70`  
		Last Modified: Wed, 28 Oct 2026 02:18:08 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0036a8d668d4b47eafc0c12a743f0898f15e92df302013f9fb4816d7192536`  
		Last Modified: Wed, 28 Oct 2026 02:18:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0e2e035abf8d4eb06c39c560ba8774bc916b90e4deb13362bcb595adeace195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012a4252a44f344e93fde088137126c4f69ff3d0dbbe13e41a3a9c75b09e929c`

```dockerfile
```

-	Layers:
	-	`sha256:f6f572bf406e57e6998a4962256d7d7b57aa5bad5bd5494c7015895277372df0`  
		Last Modified: Wed, 28 Oct 2026 02:18:08 GMT  
		Size: 2.3 MB (2335378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:157826133aa9ca6bb972047c164014e7893cd44f9eb973c86cfdab3137aa3ee0`  
		Last Modified: Wed, 28 Oct 2026 02:18:08 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60c0ad3644a542db40de91db9bfe800a084e3be4509fbb9995db572b4cc7430b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144080075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f0c0034ac3bd462a59842ba7a31f7b50ad89afce38755a30266d3415cef297`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:24:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:24:08 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:25:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:25:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:25:38 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:25:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:25:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f354d8a41d3ca18034d57e364f2238566d5ae9a36e4816803d4a58ea7144bb`  
		Last Modified: Wed, 28 Oct 2026 02:24:45 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c50c3450b7605d3cbde6552540f75c8f4e2efe9e14f9e403e503bed2c87b300`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 16.7 MB (16717857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e71b6dad049e2eee2a646eb02fc71b3336837149ce6803739bc0a12230037c1`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae01a1619df67d9695028b58d01c019ada62e7583c980681975d49f504c1c980`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:74a7306147fadb0c011a8ea86170fe64bcc0ac57a18f2b2c580ff30f7894c96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75d6cd4403255d7ae65719d9f538665f7ce2ecb5049965ae8f9cd6a6604423f`

```dockerfile
```

-	Layers:
	-	`sha256:cb80ec7a1da9bc8a5af5e3965420033fbd722859aa912d7cc5f5c8e9384efc52`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 2.3 MB (2334985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:672fe24e6937c4f7ce55da7d35d18cefb0e4dac3332ac3efadb28357e986a91f`  
		Last Modified: Wed, 28 Oct 2026 02:25:56 GMT  
		Size: 17.9 KB (17865 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2fe934a20e4979a3a90cea9ef00f7bc91981418baf18eb8eba5d02a6d371764d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147202464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825b4b29ae67fe2976cabd1eb0302c19b4acaaa74980ee4672f96faf1842a023`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:21:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:21:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:21:37 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:25:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:25:23 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:25:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:25:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:25:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a828c2fdb7bfe67406011a719ce82adb7addc34d3cb8df199646234ff6fa682`  
		Last Modified: Wed, 21 Oct 2026 11:26:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5679b3f13a6a03bffafdf27afe3c50fad2bc698ff02955482fdffe506996390`  
		Last Modified: Wed, 21 Oct 2026 11:26:01 GMT  
		Size: 16.8 MB (16779082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f6549d2fb1c261ac165d7a08963afce11dde2e8598333243bf96a079906579`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2263236174bee67fe03ddf06d73519c9522b3a806b304f64999196d3ed81d25b`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25b4e7fc409d2f379c36114fe39c64e4c4cd4de426ec8030e446cb8ae4bc51ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8443c48276041ec611be4ad9c701538eafad7abafadab58a37b9c6c5c70a6137`

```dockerfile
```

-	Layers:
	-	`sha256:5dcba5693cc602fe773990f37ad6fd6d3d272113bd96720850ad59a2a733c238`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 2.3 MB (2320294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d2a0179c8f33357ea616e3f4739677fbec44122b0d98cf9b9e6511a90661c9`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
