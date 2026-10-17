## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:a1742a9e103068cd1557f5128b23e587388eaa21d86b2eb0b841bb918dda4910
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fda2073e64c0e1fc89385a862150723b9020a1590a65a677ac3dcbf36312f5fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221335026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c2ae861e93f4109150f263bdbbc8452e7b223e846234abf61818d5bfe93891`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:54 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:46:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:46:54 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:11 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab722badf69218e9d6815595e1584a1c48e134495f315f10df7ae645dd82e735`  
		Last Modified: Sat, 17 Oct 2026 01:48:34 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a904d31aa1ac1d58efe1e2cc002f460e27e47beecf1c17c6c2b99d1feed5a595`  
		Last Modified: Sat, 17 Oct 2026 01:48:31 GMT  
		Size: 22.4 MB (22437224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b686cc659833430dd6b3d45a567dcf79a525a8f5880a63083957be98921a29`  
		Last Modified: Sat, 17 Oct 2026 01:48:30 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e83e2d9a18b16d29ad7b84a10d2f875a7832e10591fafbe6b8f7e99b8de6b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510a3a2e1a70bfb445105bef81f41d4bb662ebd6b3dcc2169925e078848295a0`

```dockerfile
```

-	Layers:
	-	`sha256:be5045fb7d94e7487fe0ad074507b20279f8eb5a7f2ce1bc43574b50a47cfd61`  
		Last Modified: Sat, 17 Oct 2026 01:48:30 GMT  
		Size: 4.3 MB (4308815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1cfdaf672770fc1d6a3564a0c51178e68258e230315cf22f6cc37a0b3e32861`  
		Last Modified: Sat, 17 Oct 2026 01:48:29 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f33059878567b172fe99338e506e779a7cbf29b55697930691cc826c60775b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217723483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e449dc139e966f3d6796668530e29c4bef7f9f9d81d805a9e85cc6b5f219ca9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:57 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:46:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:46:57 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:20 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f63b895c55a3be9bff47f205ea8dccceb3e913b620102b3dd9a49e6659d430`  
		Last Modified: Sat, 17 Oct 2026 01:48:42 GMT  
		Size: 142.6 MB (142576603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886f5b5646062504f4a4739f17c809ad11cf35943bf786f73c460e6e7df1b26d`  
		Last Modified: Sat, 17 Oct 2026 01:48:40 GMT  
		Size: 22.2 MB (22230074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451860895256a4596cb018163a553988d08507ddb48751ddcee2db0fbfefa72f`  
		Last Modified: Sat, 17 Oct 2026 01:48:32 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4f8facd52fe9f83f008660591df33c89c4bd54128d6b5da47d1a17b252f41eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8847aa6c8f17dfe27874ab94189316580a1cb3e9512ac4ea9129ca9ea81576bf`

```dockerfile
```

-	Layers:
	-	`sha256:cb93b7e356a6cf946b894f7ad0f87f3a0afab48dec4f45913970a8419390a2a2`  
		Last Modified: Sat, 17 Oct 2026 01:48:39 GMT  
		Size: 4.3 MB (4309048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be80d2c16a2cc9f31a03a1d357a0d707f29447eca5d44b59cdc03394eb8d5e7b`  
		Last Modified: Sat, 17 Oct 2026 01:48:39 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:debfaaa2d1d1d3c11c21246867a70922f2d7d51c91a9e44b01ba3d162a4f7b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212803473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6078cd09489a29eab8c5f7dc9c6524df3d49493d0f168a230ea55d420091928b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:45:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:45:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:45:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:45:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:45:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:45:16 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:48:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:48:50 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:48:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:48:54 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35adba34ddb621d647b1817760b55d8e71fb4bd4d48d9e56973c7a0bdf3f1df`  
		Last Modified: Tue, 06 Oct 2026 09:49:39 GMT  
		Size: 133.1 MB (133094722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4773cead0db01db26ac4beba6f154991e7f90e524137df8ff6a65cee4ccf63c9`  
		Last Modified: Tue, 06 Oct 2026 09:49:36 GMT  
		Size: 22.8 MB (22830756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ff2d821ceedeaee64ba3515752d7d125020bccb9494f3085e107943e9a5fad`  
		Last Modified: Tue, 06 Oct 2026 09:49:36 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e0857fab96a0f617c5847edc7a4aecdf100edc6c80599d70938e7df5fcfe09a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f176a067324f5d6016d98a3dcb3f6c5ed2fbeefd916be8e14a7b1fab3ee123`

```dockerfile
```

-	Layers:
	-	`sha256:2222231a4e5a2eaf63ef349fc2a584c16a45fa65e1f4da13a98698f2ab502e2b`  
		Last Modified: Tue, 06 Oct 2026 09:49:35 GMT  
		Size: 4.3 MB (4310061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7926e641e5e8b21703ce0205543d93aa0d4de23c3ddc73ae9cba6815d662483a`  
		Last Modified: Tue, 06 Oct 2026 09:49:35 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
