## `clojure:temurin-27-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8662f56b387469953d3b91391a231404b8dc3d15c75dec77909125cace3ba66b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b455f2b6d0ef812daff47d295b661d76781cc7a5d707df1878c6393440aa31b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144723642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b395909f43467bb1eb8833ae16a9f2ba21a59eca8f3fc9daa5dd17290d4c9e1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:54:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:54:16 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:31 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8135e60532b3ea738ed13eb8b15f6606892e06388c457ec7cc97ba188a6b12b1`  
		Last Modified: Tue, 27 Oct 2026 00:55:51 GMT  
		Size: 93.6 MB (93622514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b13fa845c9ff29c5be983bb67cbf1c80dfed53c3604dc74a012c3f1d3575f1f`  
		Last Modified: Tue, 27 Oct 2026 00:55:49 GMT  
		Size: 16.7 MB (16741938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4553b979158f82f326456f068912e25c6460a2051170008c706044ba445a6fcb`  
		Last Modified: Tue, 27 Oct 2026 00:55:48 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4e556b1afa7876076b25c1e388d023526c81ac516e3e8429f1cf9e750a25da`  
		Last Modified: Tue, 27 Oct 2026 00:55:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b259b90a59e246b06c7a82f3edb61a7ca720970cd69907de22cf631f61909d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e22be30a70dc88fddcff6bd577655949e1944a520c29a89f28b1b80b7fe741f`

```dockerfile
```

-	Layers:
	-	`sha256:fe30ac710f4fa11c863f11775c2f80a61c4380e158064dd32fe9507bb5e7e91b`  
		Last Modified: Tue, 27 Oct 2026 00:55:48 GMT  
		Size: 2.3 MB (2335378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7108dc6409386648a1975a8626c916eb5500b03eaeb97ddb6ac3f0aa0a898ae`  
		Last Modified: Tue, 27 Oct 2026 00:55:48 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

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

### `clojure:temurin-27-lein-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

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
