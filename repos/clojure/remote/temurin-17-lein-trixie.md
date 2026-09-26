## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:9a847f3fd34add40389d7cc8b3aca1bf90269d789fb7cb1c022e370736532333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7af0bd400128ba47f97d0db9547f9aafccfd04e74a34fad0a8b214aced3ac0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218617125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0cba93702f5eb7083a22778b92ec7c0cb84de3b9f3a242c9974541f924e78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:21:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:13 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:13 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:28 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:22:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:22:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b8a5fbfdb37e38c0ed69c030446d09744134310c90b3fc2b210b2b6585ec9b`  
		Last Modified: Fri, 25 Sep 2026 23:22:49 GMT  
		Size: 145.8 MB (145824880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e7a9f879fcad27d2ef5cb6b233e4f557242e4924cd2f7a43f19b8ac6811926`  
		Last Modified: Fri, 25 Sep 2026 23:22:47 GMT  
		Size: 18.9 MB (18896940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056f2a755517d9b83fb384aae6d7f4a233a48185f7c0ec71265231461277f5b2`  
		Last Modified: Fri, 25 Sep 2026 23:22:46 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6434faf5df6a14565f4444d24c0ee75df6ac4a52c135bd7d86a5bd6a74ca56b`  
		Last Modified: Fri, 25 Sep 2026 23:22:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0162cf25776cd82b7a42b801b9cbc20ae4186708f620292648500022205e0433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485d5c8e3860ff430bcad32a1f295f8b8a1a4e96ea4d42241db54496551d9efa`

```dockerfile
```

-	Layers:
	-	`sha256:71f9c75b48f192ce4051ebc2dcc59eaa5139ee489f552acda68f64943ad3b072`  
		Last Modified: Fri, 25 Sep 2026 23:22:46 GMT  
		Size: 3.8 MB (3827747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:556320e9fd06e094c693f80b18a6686f8a99cdbf7454413b4ad0ee1bdfcc4965`  
		Last Modified: Fri, 25 Sep 2026 23:22:45 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1a252ddfd04eece41762289134e549bb60f0908d3bcc0100e8600dfbe66f948c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217757375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ca8c67e160021160b6734aa60685944ea598c641383367cc100e748ce9afe0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:18:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:50 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:18:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:18:50 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:05 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:20:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:20:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61be4a2e35c40561880cba38544f5ac8121ecf8406e0f77fcb7d9828b7eacff5`  
		Last Modified: Fri, 25 Sep 2026 23:20:28 GMT  
		Size: 144.6 MB (144648249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c73b14fa9b9e27ad103ed1e4ddc9f8d2320be535416276fa0b1aa71fb190217`  
		Last Modified: Fri, 25 Sep 2026 23:20:26 GMT  
		Size: 18.8 MB (18844655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ce847151a374de72cfedcc19f4ce16583c1fd83f9dceb14f2b0c051369d447`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b4f19d05434f3a74b048e0936f7a30f84253aeeaa804bba3090bcbb9cd30ed`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0676716b1d71f4acff1c8ecffd1096efb6a474919bd31dc9f10b681b9bd9cdfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26af71925a252200f91adac173d58ab6885940dcab5b1eb64af791a1c99a4a04`

```dockerfile
```

-	Layers:
	-	`sha256:57f687060e60c7dc515915e1e792f440e62c0ec7b870a3db707fb91a3a13f952`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 3.8 MB (3827987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c5241e52538342b551648296f090697f5f09003088d4aa8463b3499960ff83d`  
		Last Modified: Fri, 25 Sep 2026 23:20:25 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:42662fb58b130f122351c5652884b4abc072847a098491c58b190f1bcb45a9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222326619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a30bf5e1e6ac664ec40041a720cc115c15cfcdb072317a7b33c86c09ea44cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:54:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:54:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:54:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:54:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:54:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:54:31 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:57:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:57:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:57:14 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:57:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:57:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:57:20 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:57:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7661c2a8ca6104e076fccf72408bfd48135a2ca63700fd0c23a220367cd034e`  
		Last Modified: Sat, 19 Sep 2026 07:58:05 GMT  
		Size: 145.7 MB (145674257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d1c3ca222b0d86d57b738f6a1974ba1fbc8595ad565d7204e9d75533c2397`  
		Last Modified: Sat, 19 Sep 2026 07:58:02 GMT  
		Size: 18.9 MB (18941648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd801302ac43158ac6f5cf4c5a3f62eb4fe31d4a8a8d591e86fe18bd90e17d54`  
		Last Modified: Sat, 19 Sep 2026 07:58:01 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cac9c7ca4bef4d2ef376646007460b3e3e023f355852843829f20e4efd50e28`  
		Last Modified: Sat, 19 Sep 2026 07:58:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:570df449adf995e86c78f97cb1bba99027272289719addf295daabfa3da710cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d043f9985b6ed5161b61290c089b37c03327bc3d48fae4d7d77cbec9c597a3`

```dockerfile
```

-	Layers:
	-	`sha256:beae85e5bfdf6b2cc57a2ab9862c9083f9cadf3e7d5874d464ebfbb1ebcf0788`  
		Last Modified: Sat, 19 Sep 2026 07:58:01 GMT  
		Size: 3.8 MB (3828737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df8a11473dd8379590d81c86b998285271aba4e5c9dfbd46545dadd0e24e639b`  
		Last Modified: Sat, 19 Sep 2026 07:58:01 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
