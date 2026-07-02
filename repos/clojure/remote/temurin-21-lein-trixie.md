## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:ba1366aad92afd0e0ae3c0e98ad3e8471853162e45b7e7b9a6ae20163f6d3313
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cc63da2e35a9217f8513712e0e2a33d8274628e6f6a1d49bac740a084297c9b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230890744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ed328f9a8b79f962bf39af9d80072c6ce0b6231c3ec45e8719bfcb7aa1f320`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:52:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:24 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:34 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff72c36fa5bc75e3cf96d70139770659fc9e0d3090b00f7d467eb5ecc854c9b`  
		Last Modified: Thu, 02 Jul 2026 05:53:56 GMT  
		Size: 158.2 MB (158166929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da222ab72676bbe25083094bec01364bf8308fd300c615e3b9240ce292ff029`  
		Last Modified: Thu, 02 Jul 2026 05:53:53 GMT  
		Size: 18.9 MB (18890953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b44dd35df19515ab04d8338c58b48759ecf15d6aaaf5a0e58eac277d5187a9`  
		Last Modified: Thu, 02 Jul 2026 05:53:53 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730fe31a3d5567c33422070de8abb211ac5d19d431ccafdaaafca3ff830d4cd0`  
		Last Modified: Thu, 02 Jul 2026 05:53:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5af86269acc9e7b59ec32c4874e410ec21df40b9cff7f775c1300aa3bd04d244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203efb390d20f9922c1f3c0dfc9103fb4ed540516e9885a1af8caa1be03a848d`

```dockerfile
```

-	Layers:
	-	`sha256:0bf6b4f5abc94b5a655a581eff30c1e0b15b2b2412e4b54d12ec3470f67eb192`  
		Last Modified: Thu, 02 Jul 2026 05:53:53 GMT  
		Size: 3.8 MB (3819672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a62a77d33489d533c503f727d9aa64dd0fb5bd23da6c3bff22d0cd852aebecf7`  
		Last Modified: Thu, 02 Jul 2026 05:53:52 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3b9453be34204aa8bd8f47d62444f61797d2abade676f7350d39673f0a22ebac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229494999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cbaf621e223909f34f3eb4515627b8427a649b20c222b2c9ab35f65b0e0824`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:52:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:54:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:54:14 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:54:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:54:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea96f543c1c89ce2eeed203139eaae7dfb40cf2a25791b80ba392f90390aaefa`  
		Last Modified: Thu, 02 Jul 2026 05:54:38 GMT  
		Size: 156.5 MB (156461286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3a19c6771791a9c519efb38d3697ae336559d7cd23703119cad63fda7dd092`  
		Last Modified: Thu, 02 Jul 2026 05:54:36 GMT  
		Size: 18.8 MB (18839709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe2fbac7e221e31df69afb0f8b70dbb4ac96c3dc73a90ab0659444e47b11e4e`  
		Last Modified: Thu, 02 Jul 2026 05:54:35 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9b33b8a163372b2cd147718cdc4b2920c7ea269c3f1e4bdf0099231d662bff`  
		Last Modified: Thu, 02 Jul 2026 05:54:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8a36a73d09f732a9459b473c201556a616d57eeaeede891ced689ccb9fc3d544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ec1255602f8c052ea168ad51fee7a857d44d6f0a66a45e8233639b24f7c846`

```dockerfile
```

-	Layers:
	-	`sha256:56dfee35e993f681bc1a9e7ca6b976503332c2756a4ba8292db9daab2c89eddb`  
		Last Modified: Thu, 02 Jul 2026 05:54:35 GMT  
		Size: 3.8 MB (3819912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f01fbd6dac52e6e058de7d7d52dc078ba68bfda7d5f86e6ee4664797fa55f31`  
		Last Modified: Thu, 02 Jul 2026 05:54:34 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0d87f14e9676387783cbcf979a7b0e4c8d2961ef764616032578bf027a508771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234933295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da34e7f1830ff4f8adcddde3069bcfdf106b5ac041b182de87797ba5f1cf8b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:26:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:26:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:26:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:26:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:28:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:28:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:28:46 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:28:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:28:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:28:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:28:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0964c3ddcdd7f9937042dfeaa30d8db89c3f68bedf99f1bb561e658ecd29cb6`  
		Last Modified: Thu, 02 Jul 2026 07:29:29 GMT  
		Size: 158.3 MB (158343184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53e7b1ac10d89197c642cfc32215bb44dd54733abc193b038226adcad15b79d`  
		Last Modified: Thu, 02 Jul 2026 07:29:25 GMT  
		Size: 18.9 MB (18936432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209f59b3a809af3db3f9aa4b24faf3f0db5e8eb58399b43e2d678aad7da28cf`  
		Last Modified: Thu, 02 Jul 2026 07:29:24 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c18906f91a66e62b30d4e25c3a693f6336199d95a9389b0007665e0f878055`  
		Last Modified: Thu, 02 Jul 2026 07:29:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7e3047150d1ae23713e8bfbec7be8f757122f425b2a5788fa778a746cabd1438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3243fdae000c450012cb7411b5679689414081032c34ced503f7ab315e809e`

```dockerfile
```

-	Layers:
	-	`sha256:fc57dae5f7c4250c5bab5b8cbb8e8984c3662c4766ca9ae4f7d1f466d9859001`  
		Last Modified: Thu, 02 Jul 2026 07:29:24 GMT  
		Size: 3.8 MB (3820672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e75e0d1c544e3ad70ec84b357700a05e010c82894a41780699bc9a13afff83fd`  
		Last Modified: Thu, 02 Jul 2026 07:29:23 GMT  
		Size: 17.8 KB (17760 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:16df31669334a6bd6fed81f5815c742cc3ea2568f1276a9bb491ecbc78602920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220212388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a5add804f567de11df4c74b24c8f1714bbc086de615d51338ecce2ccfb108f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:49 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:53:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:53:49 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:54:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:54:52 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:54:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:54:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ead621cb57de5ed499d17a4db193900e2342a0d4bf3c61eac91c7498df01367`  
		Last Modified: Thu, 02 Jul 2026 05:55:20 GMT  
		Size: 147.4 MB (147388354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff632b66dbf0db0a755529cd30742c2e9956f6d1a6db27aef5c8e2a0a38c58f`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 18.9 MB (18922348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d91adc23ca00531649ed83faf5a0e56136dc941c8e41abafa0594a738bbe510`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbe1984cc73456454a659f300d2bfa068edcde2707c92179c51c18566f32376`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:042a34df71b5021cf37d60b2f68a039c03016bdfa1798ab25b6e1166f26d6dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d52b242f9eb484f4b7f2589dcfddb8c4658cd40c60759a00ee8f32a5ea05057`

```dockerfile
```

-	Layers:
	-	`sha256:a6bae0410023b2efdd49c396ee469498a93b0e78b2501794fd09ed485064d442`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 3.8 MB (3816099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9be765349f8a9ea1e3d1190ff3bb92b6aacec31ac1875b51548b786b4f75a14a`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
