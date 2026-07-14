## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:14fd2a95756eb1321aec3fbc22b81bb11d552f8931034bc46fa2c4406b4e0449
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

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fb9bee639dbc4dd1b38aa9dfc8a975775b420c67582d7cc805bf8c23dceb4314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196727352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ab7f32370b6f1d014f2192338e76dc009a5503b918da4b5d906660a731a070`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:18:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:35 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b208026a83b23ba884b07693b0a13c675a60893f9c2e5bc6000c9b5da4d9ca6`  
		Last Modified: Tue, 14 Jul 2026 02:19:56 GMT  
		Size: 145.9 MB (145906343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3d0c296bf0035e71bdf27680e169c2195d595c862f8f1fb1a9ffeed5ecf67f`  
		Last Modified: Tue, 14 Jul 2026 02:19:53 GMT  
		Size: 18.1 MB (18072731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db6ea151135c078c2a2a268c7876ec4770fe69f2d077109635e0e10d0a6d10e`  
		Last Modified: Tue, 14 Jul 2026 02:19:52 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac928f22631906cea2f5a99bdd3182083ff8ec9dd0411d2d11328c461a1ebfb5`  
		Last Modified: Tue, 14 Jul 2026 02:19:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93dc72371b2434951d36e50199aaaa4b83cc921cdaf656c71c2ccd06783e0d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2750145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3278c9524749cff84f55f52316e5e5282c05247db0714abf2c9bd57c908dae9b`

```dockerfile
```

-	Layers:
	-	`sha256:84210088ec0f4be1959f77b3d7c363b0c4e01aaff7b880f1047b32e2e3024eb9`  
		Last Modified: Tue, 14 Jul 2026 02:19:52 GMT  
		Size: 2.7 MB (2732373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e37dcfcc887918228987567c819d7de461f94294dbf556c3c36c6e00e532984`  
		Last Modified: Tue, 14 Jul 2026 02:19:52 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4efa365ea199c333d3596037a507fa7020c72fe4958934705cb293e6e542b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195262744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4504de70a4cc7a50229821536358ed4535b186caf39e63eed68f4cade9c99938`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:28 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abecae7865019f3eeb34d69c9841a2e59e7d8b3a9993debc3de873bf7ebaa37`  
		Last Modified: Tue, 14 Jul 2026 02:26:50 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f100bed433f8f1172ece7d4d735ced911770183ada9dc2a4545451e4b89696cc`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 17.9 MB (17905548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c66850a24b12ce5346ec7184698fa00ea1b50ca3d07afef702aaf87c55bdc3`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04064bfa4926a00e5695e20890e2c062f5053696a5e951b29a3121c99ded074f`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e42e17f878ebbe317c683f735302c008a423f8c5e5e4fd16b2781c8ba9bb803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2749881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fd11169da8cfe7219b33ea4fc0b10b8d0586cd65e298ddb935fa82bbb31b0a`

```dockerfile
```

-	Layers:
	-	`sha256:f1d926429d8a069e1b33059280f03745166f0bfc90a520649ccb55634f7bfc53`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 2.7 MB (2731988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:659d9eecf8010d09047f0bbf4d89d1e437d5b47dd8fa0520f5ff56df6fbe871d`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5a7dad7086e4391dfbb59a0996440207a05ca8e3d156094773f2a96384e8f5a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200627482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a2aa672f370d4aee14bfe72592a04f08bdefcb63fd789c6431c9390c1d0658`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:06:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:06:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:06:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:06:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:06:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:06:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:08:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:08:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:08:52 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:08:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:08:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:08:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:08:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7229c8e0b663baf447dddd27c15f1ceaae1559bc107cce4efdf074f13bf0e26d`  
		Last Modified: Thu, 02 Jul 2026 07:09:31 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5cbe5f446aaded9845fff681a9a232cccac12793619968c314fec25e707ce3`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 18.3 MB (18263690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2090562cee0fe514b611957fd09758210b4d6d4fd782f9c38fac699d3f2c1d45`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a12d2755cc53294025490bebca1f57edf638418056536bc9f37a293680fc140`  
		Last Modified: Thu, 02 Jul 2026 07:09:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fe6cb845b69cd44abd88cf807fe79c568364f2410e1b0dcce16bec3398a160ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5290453b46af18048baf041885e2a87d66e687b95953e9d06ea8c50e548cb17e`

```dockerfile
```

-	Layers:
	-	`sha256:bbb8382b8eb39a58c2f07a63f325f89dd7608997afcb835f2c66e223726596d0`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 2.7 MB (2734170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09e45716d5531e0916417f7b54accc72d8642edde92548206370a2bbe83bfb7d`  
		Last Modified: Thu, 02 Jul 2026 07:09:26 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:2b9a0792dfa36dcf32cb26db36db5e1b291cc83fe1bf75022722c37e0696fcc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185039213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2baf2d650b1e5b37a8e910027e1edc3fac3e3cae75f1d0ee153fb104f41c000`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:28:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:28:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:28:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:29:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:29:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:29:21 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:29:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:29:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:29:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:29:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f083990f45009ab41138be417d3ed89f87007fa32aed25a0217e54b661f2a444`  
		Last Modified: Tue, 14 Jul 2026 04:29:48 GMT  
		Size: 135.9 MB (135910454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d81dc102cafbbfd8be08b514e5fe6c2b03d79d3f4e85860792a2065331d01d7`  
		Last Modified: Tue, 14 Jul 2026 04:29:45 GMT  
		Size: 17.7 MB (17724866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37acff46d12bb340983ba04119960467cdff023f23b7736e5eab80184f2f73f7`  
		Last Modified: Tue, 14 Jul 2026 04:29:45 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab8efd9237e871dc80a158b8d781248e104da88abd01518dcfa1de81b7e6ee2`  
		Last Modified: Tue, 14 Jul 2026 04:29:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:076ddc517f41b69f3564273e9e256d65ba70308f65f0b8a7ed5f2c166c495996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb9f26b6d07cf143dcc9a90633c0e87c6b76b4d4717d73bb468751c10d779b9`

```dockerfile
```

-	Layers:
	-	`sha256:f428549823e1f0169a94c5a89bb0de67e0dc92a0a25d83d02a1f19acc102160b`  
		Last Modified: Tue, 14 Jul 2026 04:29:45 GMT  
		Size: 2.7 MB (2724187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f6747a409b8c00b66dfd3b78b02832a9f1e060fd851d29b2fc112fda30b93a8`  
		Last Modified: Tue, 14 Jul 2026 04:29:44 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
