## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:9997bff39c0aefad03a6e00a1b62c2a2a69672786e38d4d0c808465fd295a871
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
$ docker pull clojure@sha256:56c8a85861cb59f4a9a66d5b6a0577a494070bcd20fc3ff79f01464d242cef62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165412761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3f0954fec8569883d58c32e2a22a8c951987c51081af0262b8f4cf824ec98b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:50:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:50:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:50:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:50:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:50:46 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:52:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:52:04 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:52:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:52:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d76ce784f92fd3ebad1461990035660fc0aa7b18ec7b18e2699350a8b780911`  
		Last Modified: Thu, 12 Nov 2026 00:52:17 GMT  
		Size: 92.6 MB (92598876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744bb9296299d87b62605e77e4b833bf3b9d38963c9347e67e451fdf5588a7ae`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 18.9 MB (18885226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c971f8afd44408b1184416386cd8698f38c84e3172b6e9cf07da6e21c1e0b871`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ddb4917781a5dbbfaef4df2f36ae33a7a0a49a5ae309ac300cb1725e2d35fc`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fbe025f5df8eec66242a23ffaa726ca890cfcec233af3540857e495735b9965a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88ff26849631f0d84d08c1ea4807e19bd86f14634d867849b70c4e28ce5c11d`

```dockerfile
```

-	Layers:
	-	`sha256:718b9193edb2c2b614fe687af4480e7582d09211356da0f6c98e3639659822f6`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 3.8 MB (3794492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40cb3c0b14e52c37693e718a5e687a5940de361823e1b6db1b43cfa63bc38beb`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5663d36047b2f54580800dcca0f5bbb3096ee622700154a29a6cac4518169c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164663257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfd2a0eeb45897cfccf6b02e65b021b914899460876cd85b0f91025a34082bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:06:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:06:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:06:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:06:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:06:21 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:07:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:07:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:07:43 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:07:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:07:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:07:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:07:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14da4be72ccc6bc2e402c1f5fc5dee4d3f296ca44f0c75484a04855a9f359df`  
		Last Modified: Thu, 12 Nov 2026 01:08:04 GMT  
		Size: 91.5 MB (91525624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bed4ee878025c73e141227e7f06c347f2cbc7d79be5ca375ede1c5678215f48`  
		Last Modified: Thu, 12 Nov 2026 01:08:03 GMT  
		Size: 18.8 MB (18842913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e15461eed12fe5856d7bdfcb0dff179fefbbfaae27e70665d68f2fba14815cb`  
		Last Modified: Thu, 12 Nov 2026 01:08:02 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b517f178f272bf01188d280d0d112b7f468ec58e152ccc2925cb63611a46a4b`  
		Last Modified: Thu, 12 Nov 2026 01:08:02 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d6b864a5fb51edba74095fc0c5c61d43ab78bccac87529a6c453289e86b736ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ae5fa8e6fac13686178aed511913de6bbf2f508571dfa052b27b2a33cda1b`

```dockerfile
```

-	Layers:
	-	`sha256:430a89a7155db28a7139ccdf5f4ed7a5bc52f0dea2e5203cd24dc19442af6137`  
		Last Modified: Thu, 12 Nov 2026 01:08:02 GMT  
		Size: 3.8 MB (3794753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a871ca1a99d1e0d9dc1bd6b8289c7b47f6fbb7c1795507f1d422f29735e28355`  
		Last Modified: Thu, 12 Nov 2026 01:08:02 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2ea27c6d7163afbc260d15ef9233db46b0e20c6b51e8b585d2768081a69e5163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166792606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89f1a1e5bd72a785fd6cae9b9c058268893dcb9399ff70ebd2cb19f0d2b21a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:06:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:06:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:06:51 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:06:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:45:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:45:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:45:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0b938b3dc2a25102559658a871f7ea71b0ac92a4a92d265b37844a8f0aef8a`  
		Last Modified: Thu, 05 Nov 2026 16:07:32 GMT  
		Size: 18.9 MB (18939147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b191d709f4861d68a20720b19d93ded37c347fe1865e8cbe6dab3fc206625a7b`  
		Last Modified: Thu, 05 Nov 2026 16:07:32 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02003a3918e2bbfb203c29cb8c5eb8d93afddbe48bbe48cf9656f9dedb7b71e9`  
		Last Modified: Tue, 10 Nov 2026 02:45:51 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5cb4442b0c40cf7d99b42fd862fbcd5303a6f9e2d56a74df7e40f176f467da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f225afe7557f665bc5b6bc37929c13a527f2b744491bf827d29bd7262003f137`

```dockerfile
```

-	Layers:
	-	`sha256:ba3ae259ee51b942acc6d4868a404e6fcffb318f005f3a8ef0ede27eeb0895f8`  
		Last Modified: Thu, 12 Nov 2026 08:39:17 GMT  
		Size: 3.8 MB (3776953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0970f5d27eb8c3ec564f51c389290908e08f5af0f7f651eade08082488b420e1`  
		Last Modified: Thu, 12 Nov 2026 08:39:17 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
