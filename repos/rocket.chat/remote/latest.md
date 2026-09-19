## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:c75e3a561932173f58ab78665c7833cb288c6f8478af642582f97a686de60277
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:e69e3387bf129fd5e4f4055eaaa14f96e8035d6834b8e3221b6727afd1ac4ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398082161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18edfb6f0c02419d83ab0e58bd4476ec3efc196d6686e9df3a8e1af7998ee294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:07 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:07 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:07 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:07 GMT
ENV RC_VERSION=8.8.1
# Sat, 19 Sep 2026 01:37:07 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:07 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:07 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:07 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:07 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:07 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482db4304f0c07d2b7765e4f381939c961bc91e7852b3c2dda4259228101285`  
		Last Modified: Sat, 19 Sep 2026 01:37:45 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05c6df697e684f5872a841a04eddde1e749e3814d92df6731b7f15e60d2cbf`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dd941397677df5953af841214ba3b2119c9a577f1db797524c5461e405b0c`  
		Last Modified: Sat, 19 Sep 2026 01:37:49 GMT  
		Size: 274.4 MB (274412864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:latest` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:ff44314031d45fc0538f868abb6664664b840c17dd5dfe1675ec7bd27813fb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 KB (23768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa46b3ec8214e7c9a8ec456a2047d8735ae63c0a81923b4e3424e46c66a1e254`

```dockerfile
```

-	Layers:
	-	`sha256:48b80c32499a79760c1cc15f81869f769e5ab2e64ce6ce5c909694e0a68b8559`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 23.8 KB (23768 bytes)  
		MIME: application/vnd.in-toto+json
