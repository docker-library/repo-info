## `clojure:temurin-27-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a4026b2c33b64a28a68558949f99883469fa43fddc1565e904b2f6b22aafbf34
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

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

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
$ docker pull clojure@sha256:acaea80e6cfefda60df0fadbc0ae5b505ec533932e7334685d409d10721bfb5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147216319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696396d8ccafdb4ad62b366c89e41d1404243c02d27042e2b0d8344f64eae4a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:42:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:42:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:42:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:42:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:42:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:42:51 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:46:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:46:03 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:46:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:46:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:46:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:46:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4cbf3f0081a4c36c043314ee49a6441283570fda8f8284250858e1ffc2acd7`  
		Last Modified: Wed, 28 Oct 2026 10:46:52 GMT  
		Size: 92.3 MB (92255793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3f3607bff19a854534287dace769ff1ed8b3d235569b60588d5cf4823c1040`  
		Last Modified: Wed, 28 Oct 2026 10:46:50 GMT  
		Size: 16.8 MB (16778620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a859d3eb7fcd2cc47cfeafbd4cc9164a70fe1189a50948b08f807df48330c19a`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae02b18104cc7815a3eb077dc783daeb6cb6c1214181cd560a637f305f25f21b`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9361474f6e3388b6e8fad6ba7b5c83e7a1433060f553471fb25a415895dc8709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccaa59a6b045c0ea9093c77932fd6519d861c8c935e94d4ebe09a7baf3627c7`

```dockerfile
```

-	Layers:
	-	`sha256:ad9731c350989d58062be4ec11c04adf04717f5c596ba8fc4f3ac976b7dea5ae`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 2.3 MB (2320294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4df32151ef9e6487c7d47530d56fccc4e229c64f94d615eea26ffe1cbfbf28c1`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
