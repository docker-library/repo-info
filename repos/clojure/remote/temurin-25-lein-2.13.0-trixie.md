## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:3a9e4862b0ffc09b9f0df576734248d1e8edff71227593195b6b8fd564c8c087
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:638b3dbd864708b319bc264c66f89cbf3f5782bf1272150d8f42388066d35d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171295114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928ea340333087af52dfe5d94f41cc5c8eba3863acc4dfa93275df67a6d4796b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:53 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:08 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfb613f5b4d5c972976fac32df8b16c22a4493507eb7d55548de15df323a559`  
		Last Modified: Wed, 16 Sep 2026 04:38:23 GMT  
		Size: 92.6 MB (92615111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c311f75aeb22192e5ffe6f8ba4351838b99e6544652cb8caa973a1356b5e9fd9`  
		Last Modified: Wed, 16 Sep 2026 04:38:26 GMT  
		Size: 24.8 MB (24826523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579a04d288a722895292c1b0fadec024a0838dc74d05ace35eee2d4508c29e76`  
		Last Modified: Wed, 16 Sep 2026 04:38:26 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb3b59cee7fa4caa520e5f0d2589a11976ebe1e3f5201208618dcc4f343909c`  
		Last Modified: Wed, 16 Sep 2026 04:38:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a35888302a3a7e1537afa545c5c675fee5112a551b2931acd83217c7438b1496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092c1d61052dae5cbec5704b8c5b1711d50cca3902ee68a77cd70c5deb7dd9f2`

```dockerfile
```

-	Layers:
	-	`sha256:850f56e5efe6d4ff9934fc436b16ef35ac4dfb8c753811a7802d2198a68efe0a`  
		Last Modified: Wed, 16 Sep 2026 04:38:25 GMT  
		Size: 3.8 MB (3790898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a08aa096809a938f9a943a7711b9b1e9cff252028a0913c0596403973926c516`  
		Last Modified: Wed, 16 Sep 2026 04:38:25 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7abd0c1f4676d79da37395ab542698d5ffd991b44adff289f51717812e21ff65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170846040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2690139b2cc758f006459f081dc1ddceee45332bf1fcada797564e26afd2e1b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:37:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:37:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:37:33 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:52 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac43901bf92f47e1e87884f99b06c662c94f35eee93465b98ee3571c38c16d7f`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 91.5 MB (91532222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33aef679a9767ac14f2a5bd8e0973efa5258d9e4a09ad22d0b9b672d6e85ef3f`  
		Last Modified: Wed, 16 Sep 2026 04:39:12 GMT  
		Size: 25.1 MB (25093374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614870ba690f2e132228c2f097d85153254634b469ab5a8815ad07a8c52d4c21`  
		Last Modified: Wed, 16 Sep 2026 04:39:11 GMT  
		Size: 4.5 MB (4515161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81970e4cd71976b348b8f13f42f6a0bc77e73d37df9c70b0db1748272170f11c`  
		Last Modified: Wed, 16 Sep 2026 04:39:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bb5a283ebd2ad372298c9c4b9ee32e51aaedc9b6d4687a173df1f03186660af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7db7d59eb32b9ef0ac55198c42ca69170c1c7ceb73b4c77853392907b608f52`

```dockerfile
```

-	Layers:
	-	`sha256:fbd2226b5cf710acf9655bf8296d4063be12073677a378c06134e2beacc9509b`  
		Last Modified: Wed, 16 Sep 2026 04:39:11 GMT  
		Size: 3.8 MB (3791159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2350f9b9dcd1d739155ed63c577d0c9869834e63de8cf0c6645badd5f21c0af`  
		Last Modified: Wed, 16 Sep 2026 04:39:11 GMT  
		Size: 18.5 KB (18489 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2551f4204ae485ca471c2687cf5eb3eb7ee851cbaae14ef476d599f4154a1416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171645640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9541413fbfacc973bf895f4140bc025fa8df450d9bd6f4602f7f1473ccc8356`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:28:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:15:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:15:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:15:15 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:15:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:15:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:15:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:15:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cee4322e520bb54c6b66c2f6de8f1213568ef80f2efef6c0c12c1110b1d266`  
		Last Modified: Wed, 09 Sep 2026 11:15:40 GMT  
		Size: 22.7 MB (22709871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8011671975348737bdadfa7688b88f61f3f67342122e66ee292802a5ce8a52e`  
		Last Modified: Wed, 09 Sep 2026 11:15:40 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086c8a12379ed8bc4beba672dd8aa7ce07b0ad26ed839744a1b55d7a7176b1b5`  
		Last Modified: Wed, 09 Sep 2026 11:15:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dc2ffeb9c50adf926cdc21d87f5173a85648a0b331ca68a49b8c68c2331b85b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3793587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bc81c8126d09639ae67e0f88520f51f9ba33d4e42af21822b940a01957b8b4`

```dockerfile
```

-	Layers:
	-	`sha256:96a2f32b29d668fe19fde904bbd628702b43dd014281b0e641689191d8149574`  
		Last Modified: Wed, 16 Sep 2026 10:56:24 GMT  
		Size: 3.8 MB (3775186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94bd7639633f597532aaa5c77832b3d1c71f8be3b37cf4e4e64da1ae68d9b091`  
		Last Modified: Wed, 16 Sep 2026 10:56:24 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
