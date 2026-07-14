## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:bb07a8b7a0e033af33f25e7421a60676bb59f47d27055bb126cec14bbdb8a327
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

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4938cd689cd21923691c493485daa8a533a8ec2b99c8b7b7e6739993ba0e8d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165294095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da5aa7b7ead7df36ddf4740b7ccff3fca4a10082c57b225f2d5f42a66e7f11e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:21:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:21:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:23:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:23:11 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:23:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:23:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea43acb9aa7ed2a6d3ed3ab77ab1a8581747e320796ca8d223f97c47b3448d3`  
		Last Modified: Tue, 14 Jul 2026 02:23:32 GMT  
		Size: 92.6 MB (92574566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed03b25a946d2dc5f20a654cdbfe6f6d1c6435f50809ab5d3d695c0f0ba0d92c`  
		Last Modified: Tue, 14 Jul 2026 02:23:30 GMT  
		Size: 18.9 MB (18891337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf620e3581a2ac7b437f4220ed565b8181e8ade184e66aab30ed83bab197202b`  
		Last Modified: Tue, 14 Jul 2026 02:23:30 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e21fc5609934734dce9438bccb61126928a98b258dda98b9eb5e88a3017fb6`  
		Last Modified: Tue, 14 Jul 2026 02:23:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1086cb9229d5da3aff50bf41699757a0c8d2226bddc82e97bcb4d7eff5d4ed5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea47b78e0c8600bb3e1d279c27cfb36b1afa30e8f29b86d70464df6318fdd3c`

```dockerfile
```

-	Layers:
	-	`sha256:70712a2e4f2070572415e1ac271523638dd0cc44b7562dbac8bc1cc25e24e986`  
		Last Modified: Tue, 14 Jul 2026 02:23:29 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e55ac5d667b8889d8839d02c282a69557d108ac13849bc5b68087b22136e99d`  
		Last Modified: Tue, 14 Jul 2026 02:23:30 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a0a3439c0c1261c68b3f6903eddc3b17a088d4519c0eca831fa294dd6c1f3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164584377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b78b29d3101ebf9ffd24c001b56d8b31d25ef6b6b72aac9a42ac3ca8ca1dc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:29:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:29:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:29:03 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:30:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:30:19 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:30:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:30:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da78c82afa83f6034e51c457e3d0d1473d0293f02c830f3e2a4d90c57b921bb3`  
		Last Modified: Tue, 14 Jul 2026 02:30:41 GMT  
		Size: 91.5 MB (91542263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7205869b7b526dd276affc68660e9e98c8bbcad600bb741766ea1a0968f5de9f`  
		Last Modified: Tue, 14 Jul 2026 02:30:39 GMT  
		Size: 18.9 MB (18852304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5faadaea75aa2091f68f50e549e33a70893867a59c5f4f9618548bf294dfd3c`  
		Last Modified: Tue, 14 Jul 2026 02:30:38 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b89e43cd792eb7b2e05136c833512848c269c68b748fd64feb449abf86079ad`  
		Last Modified: Tue, 14 Jul 2026 02:30:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fdd6eeb45e41d9773c176f5ba8af92305a6819fc1fdff7faf9863421692f6876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649c0d342c11c969b1bb4cefa075477236fcba7621612da1d902b490360d8e6`

```dockerfile
```

-	Layers:
	-	`sha256:b5cca7fd17bec1541a088ea6341c73795ad234b5332bf10b81fdc0a97b048425`  
		Last Modified: Tue, 14 Jul 2026 02:30:38 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab6cdd3947a66151883cbb459a23456d357facfb0c9d21412d877d9d6c87c64`  
		Last Modified: Tue, 14 Jul 2026 02:30:38 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

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

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

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

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:796a1026f357f42b28c59e31d65773ddafa38c0a3ec2d139782c58608c877745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161240122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc1045743fda748f9e16bfac7cf9aa0984d2fcd3ea6187f3b2c05b4a435ab76`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:33:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:33:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:33:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:33:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:33:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:33:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:35:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:35:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:35:08 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:35:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:35:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:35:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:35:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c6d8bc3114d2d3caa1561e81e320836bd1512ccf04acb17834dc1d3ff5423a`  
		Last Modified: Tue, 14 Jul 2026 04:35:35 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458026fc89fa06aeca789e63094065817619e32a520072cd997a36514b2bf184`  
		Last Modified: Tue, 14 Jul 2026 04:35:34 GMT  
		Size: 18.9 MB (18922398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e84d3f45d90a649eaf0703e8b4af6092dd09471be76cf42dc7b516a9e03a7ab`  
		Last Modified: Tue, 14 Jul 2026 04:35:33 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99e29b3d93f098dfb2f636a169d061b9880bcb94964058e0c9822214c394b58`  
		Last Modified: Tue, 14 Jul 2026 04:35:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ffe0f74fb196ec983b1d95e26e6d817c964ea3fbb24d1aa60dcfcc273cd1aac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3ced7063b2b50320d4516782ce130263201eead9ceef5769251ed481545949`

```dockerfile
```

-	Layers:
	-	`sha256:691b293a5f555cf058d92ae65772b0297a4d566a872d2cee27f9a12afba7bc4e`  
		Last Modified: Tue, 14 Jul 2026 04:35:33 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48c945e8af8aa5a975f9c2794983e6793d13dd4a98cde2c0ec79396b5bedbe3`  
		Last Modified: Tue, 14 Jul 2026 04:35:33 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json
