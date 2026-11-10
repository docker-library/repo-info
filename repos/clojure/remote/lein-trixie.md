## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:8283334b7b7beb1844627b52d60ce26cc6c24144ee545e6166aafb4b492eb039
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:981cf72c8ab54f0d2bec3e25ab2189572feb256a71a260e1d730b0d4681bf461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165412752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8ca2873076294d0185a710eeafe725861113ece44679a7e59bca82a7b519dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:20 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:38 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bba69001d57d8bbb75a8b98a2e5e77812bab6b78e072c2e4d34d5dbfa8b9a2c`  
		Last Modified: Tue, 10 Nov 2026 00:44:00 GMT  
		Size: 92.6 MB (92598941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73eb70ebbc90683eca8c2ff1b9a21c28b28c371fd47115bddfae879287a62607`  
		Last Modified: Tue, 10 Nov 2026 00:43:58 GMT  
		Size: 18.9 MB (18885198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e887aea0356c7e7979a1cfa9843fbec2d145b0d4d5ccad123aa72aa7b2b92b`  
		Last Modified: Tue, 10 Nov 2026 00:43:57 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a76c023bceaceace8923b6e65d5d37c3df819066e1f8c2e10ae025ab335277`  
		Last Modified: Tue, 10 Nov 2026 00:43:56 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:076191ababb7f63bb349a3487cfb7da5b7c7ddb42c6c55665f5f484979096c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88155f416ea2be33bd96eac42de4d73f06301c181ccfe2fc68f7fcc91b66d5db`

```dockerfile
```

-	Layers:
	-	`sha256:c6bdfb5deee419668055c6778a7f732778ae86f1c87e29004f4035fd889aec88`  
		Last Modified: Tue, 10 Nov 2026 00:43:57 GMT  
		Size: 3.8 MB (3794492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4891975a758790a17f8da197c5e584fe95f1abf00d1f93801b88446b99381829`  
		Last Modified: Tue, 10 Nov 2026 00:43:57 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e77c64ccc52868932f8aea1fd015e9eb5006a20bf7d59adba59caa27de583c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164663420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb15d88c7dcb8cbe71ccd56972fdc97256115d9cb052acde95aa7e140381e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:41:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:41:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:41:44 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:06 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d8b67b2108dd12f3618573feb5fa80ae785166e3964dfaab86725180a1e2c4`  
		Last Modified: Tue, 10 Nov 2026 00:43:28 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276ec9d27a6ef1f70a4a8dd25c973468d3145d109a37fb5e452091337e2a3b53`  
		Last Modified: Tue, 10 Nov 2026 00:43:26 GMT  
		Size: 18.8 MB (18843069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd10675136b7b311c40daee00ad5d1a806497e99e3c12833345ce475fe63b34f`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f05b127f0747c747c9c8550fae36487c7403004aaa15a98113ee8c3260d9f73`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4eff76cef75bfb003f93146355955ae44fdc422b808b6a40b4cf2afa70a99d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f523dea243cafe35df159cfdce43c3758a923b3eed7df14cf87eca544473b4`

```dockerfile
```

-	Layers:
	-	`sha256:95d3afa628c706c56f8b7aab92c5a326851e7541d7650338f2a3ac01f8f75baf`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 3.8 MB (3794753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fee8d0dc1fc55bbe79b5914ed3ae31358bbd89d6d1f337fbfab0223df54eaec1`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e4903a80f090c4edb4deba1c34b19ec0a7e598a6e75ed8960d7b777d2c02647
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

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f08f8cfbfdfba484ac21deafb16c57c75acc4deb0f81e3c13ce1bb1c47171876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f1786de567bfb8db4fc1ccd9ca9c09c63add7c787c6f1fb4968bcdf3fa6aff`

```dockerfile
```

-	Layers:
	-	`sha256:396cfa60feff07b830d34a1a019b94a18b1e8ff0eeba77483e3a8062fc4bc436`  
		Last Modified: Tue, 10 Nov 2026 02:45:51 GMT  
		Size: 3.8 MB (3776953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:577257d20dfca3b077d752cce8a3b68122ca9bb67e83ab0d67ceb4a347dc7ba0`  
		Last Modified: Tue, 10 Nov 2026 02:45:51 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
